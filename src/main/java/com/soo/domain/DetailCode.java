package com.soo.domain;

import java.io.Serializable;
import java.sql.Date;

public class DetailCode implements Serializable {
    private static final long serialVersionUID= 1L;

    private String largeCode;
    private String detailCode;
    private String detailCodeName;

    public String getLargeCode() {
        return largeCode;
    }

    public void setLargeCode(String largeCode) {
        this.largeCode = largeCode;
    }

    public String getDetailCode() {
        return detailCode;
    }

    public void setDetailCode(String detailCode) {
        this.detailCode = detailCode;
    }

    public String getDetailCodeName() {
        return detailCodeName;
    }

    public void setDetailCodeName(String detailCodeName) {
        this.detailCodeName = detailCodeName;
    }
}
