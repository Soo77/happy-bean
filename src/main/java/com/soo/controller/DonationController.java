package com.soo.controller;

import com.soo.domain.Donation;
import com.soo.domain.Member;
import com.soo.service.AuthService;
import com.soo.service.DonationService;
import com.soo.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;


@Controller
@RequestMapping("/donation")
public class DonationController {

    @Resource private DonationService donationService;

    /* 기부 리스트 */
    @GetMapping("list")
    public void list(Model model) throws Exception {
        List<Donation> donations = donationService.list();
        model.addAttribute("donations", donations);
    }

    @GetMapping("list2")
    public void list2(Model model) throws Exception {
        List<Donation> donations = donationService.list();
        model.addAttribute("donations", donations);
    }

}
