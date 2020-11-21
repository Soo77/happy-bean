package com.soo.dao;

import com.soo.domain.Donation;
import com.soo.domain.DonationComment;
import com.soo.domain.DonationHistory;

import java.util.List;

// 회원 관리 DAO
public interface
DonationCommentDao {
    List<DonationComment> findAll(int boardNo) throws Exception;//
    int insert(DonationComment donationComment) throws Exception;//
    DonationComment findBy(int no) throws Exception;//
    int update(DonationComment donationComment) throws Exception;
    int delete(int no) throws Exception;
    int safeDelete(int no) throws Exception;
    int deleteAll(int boardNo) throws Exception;

    int countCmt(int no) throws Exception;
}
