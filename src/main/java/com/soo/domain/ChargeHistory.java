package com.soo.domain;

import java.io.Serializable;
import java.sql.Date;

public class ChargeHistory implements Serializable {
    private static final long serialVersionUID= 1L;

    private int chargeNo;
    private int memberNo;
    private int chargeAmount;
    private Date chargeDate;

    public int getChargeNo() {
        return chargeNo;
    }

    public void setChargeNo(int chargeNo) {
        this.chargeNo = chargeNo;
    }

    public int getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(int memberNo) {
        this.memberNo = memberNo;
    }

    public int getChargeAmount() {
        return chargeAmount;
    }

    public void setChargeAmount(int chargeAmount) {
        this.chargeAmount = chargeAmount;
    }

    public Date getChargeDate() {
        return chargeDate;
    }

    public void setChargeDate(Date chargeDate) {
        this.chargeDate = chargeDate;
    }

    @Override
    public String toString() {
        return "ChargeHistory{" +
                "chargeNo=" + chargeNo +
                ", memberNo=" + memberNo +
                ", chargeAmount=" + chargeAmount +
                ", chargeDate=" + chargeDate +
                '}';
    }
}
