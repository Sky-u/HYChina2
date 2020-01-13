package com.syc.china.pojo;


import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * @author 王聪
 * @company 上海千锋
 * @create  2020-01-07 16:12
 */
@Data
@Table(name="hy_car_source")
public class CarSource {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long userId;
    private Integer carType;
    private Integer weight;
    private Integer lineType;
    private String people;
    private Long phone;
    private String startPlace;
    private String endPlace;
    private Long cost;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startTime;
    private Date createTime;

}
