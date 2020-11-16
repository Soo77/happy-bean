package com.soo.domain;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.sql.Date;

public class DonationComment implements Serializable {
    private static final long serialVersionUID= 1L;

    private int commentNo;
    private int donationNo;
    private int memberNo;
    private String content;
    @JsonFormat(shape=JsonFormat.Shape.STRING,pattern="yyyy-MM-dd HH:mm", timezone = "Asia/Seoul")
    private Date createDate;
    private int parentCommentNo;
    private String isDeleted;

    private Member member;

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

    public int getParentCommentNo() {
        return parentCommentNo;
    }

    public void setParentCommentNo(int parentCommentNo) {
        this.parentCommentNo = parentCommentNo;
    }

    public String getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(String isDeleted) {
        this.isDeleted = isDeleted;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    @Override
    public String toString() {
        return "DonationComment{" +
                "commentNo=" + commentNo +
                ", donationNo=" + donationNo +
                ", memberNo=" + memberNo +
                ", content='" + content + '\'' +
                ", createDate=" + createDate +
                ", parentCommentNo=" + parentCommentNo +
                ", isDeleted='" + isDeleted + '\'' +
                ", member=" + member +
                '}';
    }
}
