package com.syc.china.pojo;


import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

/**
 *
 */
@Data
@Table(name = "hy_goods_source")
public class GoodsSource implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long userId;
    private Integer goodsType;
    private String goodsName;
    private String people;
    private Long phone;
    private Integer weight;
    private Long cost;
    private String startPlace;
    private String endPlace;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startTime;
    private Date createTime;
    private Date loadTime;

}
