package com.syc.china.pojo;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author 汪梦瑶
 * @create  2020-01-13 16:20
 */
@Data
@Table(name = "hy_company_info")
public class CompanyInfo {

    @Id
    private Long userId;

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
