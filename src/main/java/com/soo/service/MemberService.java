package com.soo.service;


import com.soo.domain.Member;

import java.util.List;

public interface MemberService {
    List<Member> list() throws Exception;
    void insert(Member member) throws Exception;
    boolean duplicateIdCheck(String id) throws Exception;
}

