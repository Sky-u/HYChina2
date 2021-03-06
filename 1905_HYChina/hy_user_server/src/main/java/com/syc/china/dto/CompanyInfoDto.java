package com.syc.china.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author 汪梦瑶
 * @create  2020-01-11 15:26
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CompanyInfoDto {

    private String company; //公司名称

    private String website;  //公司网址

    private String logo;  //公司logo

    private String address; //地址

    private String type; //公司类型

    private String scale;  //公司规模

    private String business; //主营业务

    private String businessScope;  //经营范围

    private String yearOfEstablishment;  //成立年份

    private String registeredCapital; //注册资金

    private String zipCode; //公司邮编

    private String phone; //公司电话

    private String fax;  //传真

    private String companyEmail;  //公司邮箱

    private String route;  //长跑路线

    private String companyIntroduction;  //公司介绍
}
