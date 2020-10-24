package com.soo.service;


import com.soo.domain.Donation;
import com.soo.domain.DonationHistory;
import com.soo.domain.Member;

import java.util.List;
import java.util.Map;

public interface MemberService {
    List<Member> list() throws Exception;
    void insert(Member member) throws Exception;
    void update(Member member) throws Exception;
    Member get(int no) throws Exception;
}

