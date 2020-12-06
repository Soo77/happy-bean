package com.soo.service;


import com.soo.domain.Donation;
import com.soo.domain.DonationComment;
import com.soo.domain.DonationHistory;
import com.soo.domain.Member;

import java.util.List;
import java.util.Map;

public interface DonationService {
    List<Donation> list() throws Exception;
    void insert(Donation donation) throws Exception;
    Donation get(int no) throws Exception;
    void update(Donation donation) throws Exception;
    void delete(int no) throws Exception;
    void insertDonationHistory(DonationHistory donationHistory) throws Exception;
    

}

