package com.soo.domain;

import java.io.Serializable;
import java.sql.Date;

public class DonationComment implements Serializable {
    private static final long serialVersionUID= 1L;

    private int commentNo;
    private int donationNo;
    private int memberNo;
    private String content;
    private Date createDate;

    public int getCommentNo() {
        return commentNo;
    }

    public void setCommentNo(int commentNo) {
        this.commentNo = commentNo;
    }

    public int getDonationNo() {
        return donationNo;
    }

    public void setDonationNo(int donationNo) {
        this.donationNo = donationNo;
    }

    public int getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(int memberNo) {
        this.memberNo = memberNo;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "DonationComment{" +
                "commentNo=" + commentNo +
                ", donationNo=" + donationNo +
                ", memberNo=" + memberNo +
                ", content='" + content + '\'' +
                ", createDate=" + createDate +
                '}';
    }
}
