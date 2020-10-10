package com.soo.service.impl;

import com.soo.dao.MemberDao;
import com.soo.domain.Donation;
import com.soo.domain.Member;
import com.soo.service.MemberService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class DefaultMemberService implements MemberService {

    @Resource
    private MemberDao memberDao;

    @Override
    public List<Member> list() throws Exception {
        return memberDao.findAll();
    }


    @Override
    public void insert(Member member) throws Exception {
        memberDao.insert(member);
    }

    @Override
    public void update(Member member) throws Exception {
        memberDao.update(member);
    }

    @Override
    public Member get(int no) throws Exception {
        Member member = memberDao.findBy(no);
        if(member == null) {
            throw new Exception("해당 번호의 데이터가 없습니다!");
        }
        return member;
    }
}
