package com.soo.dao;

import com.soo.domain.Donation;
import com.soo.domain.Member;

import java.util.List;
import java.util.Map;

// 회원 관리 DAO
public interface DonationDao {
    List<Donation> findAll() throws Exception;
    int insert(Donation donation) throws Exception;
}
