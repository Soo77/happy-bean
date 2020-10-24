package com.soo.service.impl;

import com.soo.dao.DonationDao;
import com.soo.dao.MemberDao;
import com.soo.domain.Donation;
import com.soo.domain.DonationHistory;
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

    @Override
    public Donation get(int no) throws Exception {
        Donation donation = donationDao.findBy(no);
        if(donation == null) {
            throw new Exception("해당 번호의 데이터가 없습니다!");
        }
        return donation;
    }

    @Override
    public void update(Donation donation) throws Exception {
        donationDao.update(donation);
    }

    @Override
    public void delete(int no) throws Exception {
        if(donationDao.delete(no) == 0) {
            throw new Exception("해당 데이터가 없습니다.");
        }
    }

    @Override
    public void insertDonationHistory(DonationHistory donationHistory) throws Exception {
        donationDao.insertDonationHistory(donationHistory);
    }


}
