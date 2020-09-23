package com.soo.dao;

import com.soo.domain.Member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

// 회원 관리 DAO
public interface AuthDao {

    boolean duplicateIdCheck(String id) throws Exception;
    Member findByIdPw(Map<String, Object> params) throws Exception;
}
