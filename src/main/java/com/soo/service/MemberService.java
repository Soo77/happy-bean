package com.soo.service;


import com.soo.domain.ChargeHistory;
import com.soo.domain.Member;

import java.util.List;

public interface MemberService {
    List<Member> list() throws Exception;
    void insert(Member member) throws Exception;
    void update(Member member) throws Exception;
    Member get(int no) throws Exception;

    void insertChargeHistory(ChargeHistory chargeHistory) throws Exception;
}

