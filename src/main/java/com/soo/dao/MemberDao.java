package com.soo.dao;

import com.soo.domain.Donation;
import com.soo.domain.Member;
import java.util.List;
import java.util.Map;

// 회원 관리 DAO
public interface MemberDao {
    List<Member> findAll() throws Exception;
    int insert(Member member) throws Exception;
    int update(Member member) throws Exception;
    Member findBy(int no) throws Exception;
}
