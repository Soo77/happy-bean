package com.soo.service;


import com.soo.domain.Donation;
import com.soo.domain.Member;

import java.util.List;

public interface DonationService {
    List<Donation> list() throws Exception;
    void insert(Donation donation) throws Exception;
}

