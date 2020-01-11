package com.syc.china.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * @author 汪梦瑶
 * @create  2020-01-10 9:56
 */
public class PasswordUtil {


    /**
     * 密码加密
     * @param raw
     * @return
     */
    public static String encode(String raw) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        return encoder.encode(raw);
    }


    /**
     * 密码匹配
     * @param raw 明文
     * @param pwd 密文
     * @return
     */
    public static boolean match(String raw, String pwd) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        return encoder.matches(raw, pwd);
    }



}
