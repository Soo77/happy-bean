package com.soo.dao;

import com.soo.domain.Member;
import java.util.List;

// 회원 관리 DAO
public interface MemberDao {
    List<Member> findAll() throws Exception;
    int insert(Member member) throws Exception;
}
