package com.soo.controller;

import com.soo.domain.Donation;
import com.soo.domain.DonationHistory;
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
import java.awt.color.ICC_Profile;
import java.io.File;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.*;


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
        System.out.println("hey~");
        List<Donation> donations = donationService.list();
        System.out.println("3:"+uploadDir);
        model.addAttribute("donations", donations);

        // list에 있는 큰 카드에 진행중인 모금함 1개 띄우기
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.KOREA);
        Calendar calendar = Calendar.getInstance();
        Date date = new Date(calendar.getTimeInMillis());
        sdf.setTimeZone(TimeZone.getTimeZone("Asia/Seoul"));
        String today = sdf.format(date);

        List<Integer> donationIndex = new ArrayList<Integer>();

        for(int i=0; i<donations.size(); i++) {
            Date endDate1 = donations.get(i).getEndDate();
            String endDate = sdf.format(endDate1);


            Date FirstDate = sdf.parse(today);
            Date SecondDate = sdf.parse(endDate);

            System.out.println("오늘: " + FirstDate);
            System.out.println("마감날: " + SecondDate);
            // Date로 변환된 두 날짜를 계산한 뒤 그 리턴값으로 long type 변수를 초기화 하고 있다.
            // 연산결과 -950400000. long type 으로 return 된다.
            long calDate = FirstDate.getTime() - SecondDate.getTime();

            // Date.getTime() 은 해당날짜를 기준으로1970년 00:00:00 부터 몇 초가 흘렀는지를 반환해준다.
            // 이제 24*60*60*1000(각 시간값에 따른 차이점) 을 나눠주면 일수가 나온다.
            long calDateDays = calDate / ( 24*60*60*1000);

            // 두 날짜의 차이

            System.out.println("두날짜차이"+ i + "번째:" + calDateDays);
            if(calDateDays < 0) {
                donationIndex.add(i);
            }

        }
        System.out.println(donationIndex);
        int index = donationIndex.get(0);
        Donation oneDonation = donations.get(index);
        model.addAttribute("oneDonation", oneDonation);
        System.out.println(oneDonation);
        /*String date1 = "2016-09-21";
        String date2 = "2016-09-10";*/


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
    public String donate(@ModelAttribute("loginUser") Member member, Model model, int no, int memberNo, int money, DonationHistory donationHistory) throws Exception {
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


        donationHistory.setMemberNo(member.getNo());
        donationHistory.setDonaNo(donation.getNo());
        donationHistory.setDonateAmount(money);
        donationService.insertDonationHistory(donationHistory);


        return "redirect:detail?no="+no;
    }


}
