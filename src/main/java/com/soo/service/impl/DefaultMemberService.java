package com.soo.service.impl;

import com.soo.dao.MemberDao;
import com.soo.service.MemberService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.lang.reflect.Member;
import java.util.List;

@Service
public class DefaultMemberService implements MemberService {

    @Resource
    private MemberDao memberDao;

    @Override
    public List<Member> list() throws Exception {
        return memberDao.findAll();
    }
}
