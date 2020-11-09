package com.soo.service;


import com.soo.domain.Donation;
import com.soo.domain.DonationComment;
import com.soo.domain.DonationHistory;

import java.util.List;

public interface DonationCommentService {
    List<DonationComment> list(int boardNo) throws Exception;
    void insert(DonationComment donationComment) throws Exception;
    DonationComment get(int no) throws Exception;
    void update(DonationComment donationComment) throws Exception;
    void delete(int no) throws Exception;
    void safeDelete(int no) throws Exception;

}

