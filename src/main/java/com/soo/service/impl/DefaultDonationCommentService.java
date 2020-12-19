package com.soo.service.impl;

import com.soo.dao.DonationCommentDao;
import com.soo.dao.DonationDao;
import com.soo.domain.Donation;
import com.soo.domain.DonationComment;
import com.soo.domain.DonationHistory;
import com.soo.service.DonationCommentService;
import com.soo.service.DonationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DefaultDonationCommentService implements DonationCommentService {

    @Resource
    private DonationCommentDao donationCommentDao;


    @Override
    public List<DonationComment> list(int boardNo) throws Exception {
        return donationCommentDao.findAll(boardNo);
    }

    @Override
    public void insert(DonationComment donationComment) throws Exception {
        donationCommentDao.insert(donationComment);
    }

    @Override
    public DonationComment get(int no) throws Exception {
        DonationComment donationComment = donationCommentDao.findBy(no);
        if(donationComment == null) {
            throw new Exception("해당 번호의 데이터가 없습니다!");
        }
        return donationComment;
    }

    @Override
    public void update(DonationComment donationComment) throws Exception {
        donationCommentDao.update(donationComment);
    }

    @Override
    public void delete(int no) throws Exception {
        if(donationCommentDao.delete(no) == 0) {
            throw new Exception("해당 데이터가 없습니다.");
        }
    }

    @Override
    public void deleteMeAndChild(int no) throws Exception {
        if(donationCommentDao.deleteMeAndChild(no) == 0) {
            throw new Exception("해당 데이터가 없습니다.");
        }
    }

    @Override
    public void safeDelete(int no) throws Exception {
        donationCommentDao.safeDelete(no);
    }

    @Override
    public int countCmt(int no) throws Exception {
        return donationCommentDao.countCmt(no);
    }


}
