package com.soo.service.impl;

import com.soo.dao.AuthDao;
import com.soo.dao.MemberDao;
import com.soo.domain.Member;
import com.soo.service.AuthService;
import com.soo.service.MemberService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DefaultAuthService implements AuthService {

    @Resource
    private AuthDao authDao;


    @Override
    public boolean duplicateIdCheck(String id) throws Exception {
        return authDao.duplicateIdCheck(id);
    }

    @Override
    public Member findByIdPw(HashMap<String, Object> params) throws Exception {

        return authDao.findByIdPw(params);
    }

}
