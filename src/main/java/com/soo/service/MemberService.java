package com.soo.service;


import com.soo.domain.Member;

import java.util.List;
import java.util.Map;

public interface MemberService {
    List<Member> list() throws Exception;
    void insert(Member member) throws Exception;

}

