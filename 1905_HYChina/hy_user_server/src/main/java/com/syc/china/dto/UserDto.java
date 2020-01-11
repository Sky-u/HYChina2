package com.syc.china.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author 汪梦瑶
 * @create  2020-01-11 14:31
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {

    private String username;  //姓名

    private String idNumber;  //身份证

    private String birthday;  //生日

    private String gender; //性别

    private Integer age;  //年龄

    private String wechat;  //微信

    private String QQ;  //QQ

    private Date registerDate; //注册时间

    private Date lastLoginTime;  //上次登陆时间



}
