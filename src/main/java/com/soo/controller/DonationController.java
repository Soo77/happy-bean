package com.soo.controller;

import com.soo.domain.Donation;
import com.soo.domain.Member;
import com.soo.service.AuthService;
import com.soo.service.DonationService;
import com.soo.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;


@Controller
@RequestMapping("/donation")
@SessionAttributes("loginUser")
public class DonationController {
    @Resource private DonationService donationService;
    @Resource private MemberService memberService;

    String uploadDir;

    public DonationController(ServletContext sc) {
        uploadDir = sc.getRealPath("/upload/donation/thumbnail");
        /*uploadDir = "/C:/Users/Soohyun/git/happy-bin/src/main/webapp/upload/donation/thumbnail";*/
    }

    /* 기부 리스트 */
    @GetMapping("list")
    public void list(Model model, HttpServletRequest req) throws Exception {
        List<Donation> donations = donationService.list();
        System.out.println("3:"+uploadDir);
        model.addAttribute("donations", donations);
    }

    /* 기부 추가 입력폼 */
    @GetMapping("form")
    public void form() throws Exception {
    }

    /* 기부 추가 기능 */
    @PostMapping("add")
    public String add(Donation donation, MultipartFile file) throws Exception {
        donation.setThumbnail(writeFile(file));
        donation.setTotalAmount(0);
        donationService.insert(donation);
        return "redirect:list";
    }

    /* 사진파일명 만들고 로컬에 저장 후 파일명 리턴 */
    private String writeFile(MultipartFile file) throws Exception {
        if(file.isEmpty())
            return null;

        String filename = UUID.randomUUID().toString()+".jpg";
        file.transferTo(new File(uploadDir + "/" + filename));
        return filename;
    }

    @GetMapping("detail")
    public void detail(Model model, int no) throws Exception {
        Donation donation = donationService.get(no);
        model.addAttribute("donation", donation);
    }

    @GetMapping("detail_form")
    public void detailForm(Model model, int no) throws Exception {
        Donation donation = donationService.get(no);
        model.addAttribute("donation", donation);
    }

    @PostMapping("update")
    public String update(Donation donation) throws Exception {
        System.out.println("들어와용");
        System.out.println("짠:"+donation);
        donationService.update(donation);
        System.out.println("업데이트했어용.");
        return "redirect:list";
    }

    @GetMapping("delete")
    public String delete(int no) throws Exception {
        donationService.delete(no);
        return "redirect:list";
    }

    @PostMapping("donate")
    public String donate(@ModelAttribute("loginUser") Member member, Model model, int no, int memberNo, int money) throws Exception {
        Donation donation = donationService.get(no);
        member = memberService.get(memberNo);
        donation.setTotalAmount(donation.getTotalAmount()+money);
        member.setMoney(member.getMoney()-money);

        memberService.update(member);
        donationService.update(donation);

        model.addAttribute("donation", donation);
        model.addAttribute("loginUser", member);

        System.out.println("멤버의돈:" + member.getMoney());
        System.out.println("기부된 돈전체:" + donation.getTotalAmount());
        System.out.println("입력된 머니:" + money);


        return "redirect:detail?no="+no;
        //return "redirect:list";
    }


}
