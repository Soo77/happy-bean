package com.soo.dao;

import java.lang.reflect.Member;
import java.util.List;

// 회원 관리 DAO
public interface MemberDao {
    List<Member> findAll() throws Exception;
}
