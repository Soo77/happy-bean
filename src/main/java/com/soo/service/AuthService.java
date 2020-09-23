package com.soo.service;


import com.soo.domain.Member;

import java.util.HashMap;
import java.util.Map;

public interface AuthService {
    boolean duplicateIdCheck(String id) throws Exception;
    Member findByIdPw(HashMap<String, Object> params) throws Exception;
}

