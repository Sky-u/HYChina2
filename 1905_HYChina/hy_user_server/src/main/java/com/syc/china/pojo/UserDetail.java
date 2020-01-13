package com.syc.china.pojo;

import lombok.Data;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.Date;

/**
 * @author 汪梦瑶
 * @create  2020-01-13 16:18
 */
@Data
@Table(name = "hy_user_detail")
public class UserDetail {

    @Id
    private Long userId;

    private String idNumber;  //身份证

    private String birthday;  //生日

    private String gender; //性别

    private Integer age;  //年龄

    private String wechat;  //微信

    private String qq;  //QQ

    @Transient
    private String username;

    @Transient
    private String phone;

    @Transient
    private String email;

    @Transient
    private Date registerTime;  //注册时间

}
