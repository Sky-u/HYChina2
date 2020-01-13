package com.syc.china.service;

import com.syc.china.enums.ExceptionEnums;
import com.syc.china.exception.HyException;
import com.syc.china.mapper.UserDetailMapper;
import com.syc.china.mapper.UserMapper;
import com.syc.china.pojo.User;
import com.syc.china.pojo.UserDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 汪梦瑶
 * @create  2020-01-13 16:30
 */
@Service
public class UserDetailService {

    @Autowired
    private UserDetailMapper userDetailMapper;



    @Autowired
    private UserMapper userMapper;


    /**
     * 根据userId查询userDetail
     * @param id
     * @return
     */
    public UserDetail getUserInfoByUserId(Long id) {
        UserDetail userDetail=userDetailMapper.selectByPrimaryKey(id);
        //查询username、phone、email、registerTime
        User user = userMapper.selectByPrimaryKey(id);
        if (userDetail==null || user==null){
            throw new HyException(ExceptionEnums.USER_IS_NOT_EXIST);
        }
        userDetail.setUsername(user.getUsername());
        userDetail.setPhone(user.getPhone());
        userDetail.setEmail(user.getEmail());
        userDetail.setRegisterTime(user.getRegisterTime());

        return userDetail;
    }

    /**
     * 根据id修改
     * @param id
     */
    public void updateUserInfo(Long id) {
    }
}
