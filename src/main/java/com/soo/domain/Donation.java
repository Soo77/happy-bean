package com.soo.domain;

import java.io.Serializable;
import java.sql.Date;

public class Donation implements Serializable {
    private static final long serialVersionUID= 1L;

    private int no;
    private String name;
    private String orgnName;
    private String classifyCode;
    private String donaContent;
    private int targetAmount;
    private int totalAmount;
    private Date startDate;
    private Date endDate;
    private String thumbnail;

    private DetailCode detailCode;


    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOrgnName() {
        return orgnName;
    }

    public void setOrgnName(String orgnName) {
        this.orgnName = orgnName;
    }

    public String getClassifyCode() {
        return classifyCode;
    }

    public void setClassifyCode(String classifyCode) {
        this.classifyCode = classifyCode;
    }

    public String getDonaContent() {
        return donaContent;
    }

    public void setDonaContent(String donaContent) {
        this.donaContent = donaContent;
    }

    public int getTargetAmount() {
        return targetAmount;
    }

    public void setTargetAmount(int targetAmount) {
        this.targetAmount = targetAmount;
    }

    public int getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(int totalAmount) {
        this.totalAmount = totalAmount;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public DetailCode getDetailCode() {
        return detailCode;
    }

    public void setDetailCode(DetailCode detailCode) {
        this.detailCode = detailCode;
    }
}
