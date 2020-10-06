package com.soo.service.impl;

import com.soo.dao.DonationDao;
import com.soo.dao.MemberDao;
import com.soo.domain.Donation;
import com.soo.domain.Member;
import com.soo.service.DonationService;
import com.soo.service.MemberService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DefaultDonationService implements DonationService {

    @Resource
    private DonationDao donationDao;


    @Override
    public List<Donation> list() throws Exception {
        return donationDao.findAll();
    }

    @Override
    public void insert(Donation donation) throws Exception {
        donationDao.insert(donation);
    }
}
