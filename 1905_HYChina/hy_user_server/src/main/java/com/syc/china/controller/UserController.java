package com.syc.china.controller;

import com.syc.china.pojo.User;
import com.syc.china.pojo.UserDetail;
import com.syc.china.service.UserDetailService;
import com.syc.china.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


/**
 * @author 汪梦瑶
 * @create  2020-01-07 17:17
 */
@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserDetailService userDetailService;


    /**
     * 发送手机验证码
     * @param mobile
     * @return
     */
    @PostMapping("/getMobileCode")
    public ResponseEntity<Void> sendMobileCode(String mobile){
        userService.sendMobileCode(mobile);
        return ResponseEntity.ok(null);
    }



    /***
     * 注册
     * @param user user对象
     * @param roleId  该user对应的角色id
     * @param confirmPwd  确认密码
     * @param code  手机验证码
     * @return
     */
    @PostMapping("/register")
    public ResponseEntity<Boolean> register(User user,@RequestParam("role_id")Long roleId,@RequestParam("confirm_pwd")String confirmPwd,@RequestParam("code")String code){
        boolean result = userService.register(user, roleId, confirmPwd, code);
        return ResponseEntity.ok(result);
    }


    /**
     * 判断用户名是否重复
     * @param username
     * @return
     */
    @PostMapping("/checkUsername")
    public ResponseEntity<Boolean> checkUsername(@RequestParam String username){
        System.out.println(username);
        Boolean result = userService.checkUsername(username);
        if (result){
            return ResponseEntity.ok(true);
        }
        return ResponseEntity.status(400).body(false);

    }



    /**
     *根据账号和密码查询用户
     * @param account 账号 可以是手机号/邮箱/用户名
     * @param password
     * @return
     */
    @PostMapping("/login")
    public ResponseEntity<Boolean> queryUser(@RequestParam("account")String account, @RequestParam("password")String password){
        User user = userService.queryUser(account, password);
        if (user!=null){
            return ResponseEntity.ok(true);
        }
        return ResponseEntity.status(400).body(false);
    }


    /**
     * 填写详细信息
     * @param userDetail
     * @return
     */
    @PostMapping("/detail")
    public ResponseEntity<Void> addUserDetail(UserDetail userDetail){
        userService.addUserDetail(userDetail);
        return ResponseEntity.ok(null);

    }


    /**
     * 根据id查询userDetail
     * @param id
     * @return
     */
    @GetMapping("/getUser/{id}")
    public ResponseEntity<UserDetail> getUserInfoByUserId(@PathVariable("id") Long id){
        UserDetail userDetail=userDetailService.getUserInfoByUserId(id);
        System.out.println(userDetail);
        return ResponseEntity.ok(userDetail);
    }


    /**
     * 修改用户信息
     * @param id
     * @return
     */
    @PutMapping("/updateUserInfo/{id}")
    public ResponseEntity<Void> updateUserInfo(@PathVariable("id") Long id){
        System.out.println(id);
        userDetailService.updateUserInfo(id);
        return ResponseEntity.ok(null);
    }











}
