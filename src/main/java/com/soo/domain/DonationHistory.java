package com.soo.domain;

import java.io.Serializable;
import java.sql.Date;

public class DonationHistory implements Serializable {
    private static final long serialVersionUID= 1L;

    private int historyNo;
    private int memberNo;
    private int donaNo;
    private int donateAmount;
    private Date donateDate;

    public int getHistoryNo() {
        return historyNo;
    }

    public void setHistoryNo(int historyNo) {
        this.historyNo = historyNo;
    }

    public int getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(int memberNo) {
        this.memberNo = memberNo;
    }

    public int getDonaNo() {
        return donaNo;
    }

    public void setDonaNo(int donaNo) {
        this.donaNo = donaNo;
    }

    public int getDonateAmount() {
        return donateAmount;
    }

    public void setDonateAmount(int donateAmount) {
        this.donateAmount = donateAmount;
    }

    public Date getDonateDate() {
        return donateDate;
    }

    public void setDonateDate(Date donateDate) {
        this.donateDate = donateDate;
    }

    @Override
    public String toString() {
        return "DonationHistory{" +
                "historyNo=" + historyNo +
                ", memberNo=" + memberNo +
                ", donaNo=" + donaNo +
                ", donateAmount=" + donateAmount +
                ", donateDate=" + donateDate +
                '}';
    }
}
