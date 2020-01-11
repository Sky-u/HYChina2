package com.syc.china.service;

import com.syc.china.enums.ExceptionEnums;
import com.syc.china.exception.HyException;
import com.syc.china.mapper.RoleMapper;
import com.syc.china.mapper.UserDetailMapper;
import com.syc.china.mapper.UserMapper;
import com.syc.china.pojo.*;
import com.syc.china.util.PasswordUtil;
import com.syc.china.utils.NumberUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/**
 * @author 汪梦瑶
 * @create  2020-01-07 17:21
 */
@Service
public class UserService {


    @Autowired
    private AmqpTemplate amqpTemplate;  //消息队列

    @Autowired
    private StringRedisTemplate redisTemplate;  //redis

    @Autowired
    private UserDetailMapper userDetailMapper;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private RoleMapper roleMapper;


    static final String KEY_PREFIX= "user:code:phone:";


    /**
     * 发送手机验证码
     * @param mobile
     */
    public void sendMobileCode(String mobile) {
        //生成随机验证码
        String code = NumberUtils.generateCode(6);
        //将验证码存到redis中，5min后过期
        redisTemplate.opsForValue().set(KEY_PREFIX+mobile,code,5, TimeUnit.MINUTES);
        //发送信息通知短信微服务，通知其发送信息
        Map<String,String> msg=new HashMap<>();
        msg.put("code",code);
        msg.put("phone",mobile);
        amqpTemplate.convertAndSend("hychina.sms.exchange","sms.verify.code",msg);
    }


    /**
     * 注册
     * @param user
     * @param roleId
     * @param confirmPwd
     * @param code
     * @return
     */
    @Transactional
    public boolean register(User user, Long roleId,String confirmPwd,String code) {
        //1.判断两次密码是否一致，不一致的话抛一个密码不一致的异常
        if (!user.getPassword().equals(confirmPwd)){
            throw new HyException(ExceptionEnums.PASSWORD_IS_INCONSISTENT);
        }
        //2.检查验证码
        String key=KEY_PREFIX+user.getPhone();
        String redisCode = redisTemplate.opsForValue().get(key);
        if (StringUtils.isBlank(redisCode)||!code.equals(redisCode)){
            throw new HyException(ExceptionEnums.REGISTER_CODE_IS_ERROR);
        }
        //3.密码加密
        String old_pwd = user.getPassword();
        String new_pwd = PasswordUtil.encode(old_pwd);
        user.setPassword(new_pwd);
        user.setRegisterTime(new Date());
        //4.写入到数据库
        int i = userMapper.insertSelective(user);
        //5.删除redis中的验证码
        if (i>0){
            redisTemplate.delete(key);
        }
        //6.添加角色到hy_user_role表
          //查询刚添加的用户id
        User user1 = userMapper.selectOne(user);
        Long userId = user1.getUserId();
        Role role=new Role();
        role.setRoleId(roleId);
        role.setUserId(userId);
        int insert = roleMapper.insert(role);
        return insert>0?true:false;
    }



    /**
     * 完善会员信息
     * @param userDetail
     */
    public void addUserDetail(UserDetail userDetail) {
        

    }


    /**
     * 根据账号和密码查询用户
     * @param account
     * @param password
     */
    public User queryUser(String account, String password) {
        //手机号正则：
        String phoneReg = "[1][3,4,5,7,8][0-9]{9}$";
        //邮箱正则
        String emailReg = "^\\s*\\w+(?:\\.{0,1}[\\w-]+)*@[a-zA-Z0-9]+(?:[-.][a-zA-Z0-9]+)*\\.[a-zA-Z]+\\s*$";
        User user=new User();
        if (Pattern.matches(phoneReg,account)){
            user.setPhone(account);
        }else if (Pattern.matches(emailReg,account)){
            user.setEmail(account);
        }else {
            user.setUsername(account);
        }
        User one = userMapper.selectOne(user); //通过用户名/手机号/邮箱查询出来的user对象

        if (one==null||!PasswordUtil.match(password, one.getPassword())) {
            throw new HyException(ExceptionEnums.USERNAME_OR_PASSWORD_ERROR);
        }
        return one;
    }


    /**
     * 判断用户名是否重复
     * @param username
     */
    public Boolean checkUsername(String username) {
        User user=new User();
        user.setUsername(username);
        User one = userMapper.selectOne(user);
        if (one==null){
            return true;
        }
        return false;
    }
}
