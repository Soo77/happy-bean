package com.soo.controller;

import com.soo.dao.DonationCommentDao;
import com.soo.domain.*;
import com.soo.service.DonationCommentService;
import com.soo.service.DonationService;
import com.soo.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/donation")
@SessionAttributes("loginUser")
public class DonationController {
    @Resource private DonationService donationService;
    @Resource private MemberService memberService;
    @Resource private DonationCommentService donationCommentService;
    @Resource private DonationCommentDao donationCommentDao;

    String uploadDir;

    public DonationController(ServletContext sc) {
        uploadDir = sc.getRealPath("/upload/donation/thumbnail");
        /*uploadDir = "/C:/Users/Soohyun/git/happy-bin/src/main/webapp/upload/donation/thumbnail";*/
    }

    /* 기부 리스트 */
    @GetMapping("list")
    public void list(Model model, HttpServletRequest req,
                     @RequestParam(defaultValue = "6") int pageSize1,
                     @RequestParam(defaultValue = "1") int curPage1,
                     @RequestParam(defaultValue = "3") int pageSize2,
                     @RequestParam(defaultValue = "1") int curPage2) throws Exception {
        List<Donation> donations = donationService.list();
        int listCnt = donations.size();

        List<Donation> ongoingList = donationService.ongoingList();
        int ongoingListSize = ongoingList.size();

        List<Donation> finishedList = donationService.finishedList();
        int finishedListSize = finishedList.size();


        Pagination ongoingPagination = new Pagination(ongoingListSize, curPage1, pageSize1);
        model.addAttribute("ongoingListCnt", ongoingListSize);
        model.addAttribute("ongoingPagination", ongoingPagination);

        Pagination finishedPagination = new Pagination(finishedListSize, curPage2, pageSize2);
        model.addAttribute("finishedListCnt", finishedListSize);
        model.addAttribute("finishedPagination", finishedPagination);



        model.addAttribute("donations", donations);
        model.addAttribute("ongoingList", ongoingList);
        model.addAttribute("finishedList", finishedList);
        model.addAttribute("pageSize1", pageSize1);
        model.addAttribute("pageSize2", pageSize2);

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

            // Date로 변환된 두 날짜를 계산한 뒤 그 리턴값으로 long type 변수를 초기화 하고 있다.
            // 연산결과 -950400000. long type 으로 return 된다.
            long calDate = FirstDate.getTime() - SecondDate.getTime();

            // Date.getTime() 은 해당날짜를 기준으로1970년 00:00:00 부터 몇 초가 흘렀는지를 반환해준다.
            // 이제 24*60*60*1000(각 시간값에 따른 차이점) 을 나눠주면 일수가 나온다.
            long calDateDays = calDate / ( 24*60*60*1000);

            // 두 날짜의 차이

            if(calDateDays < 0) {
                donationIndex.add(i);
            }

        }
        int index = donationIndex.get(0);
        Donation oneDonation = donations.get(index);
        model.addAttribute("oneDonation", oneDonation);
        /*String date1 = "2016-09-21";
        String date2 = "2016-09-10";*/


    }

    /*finished_list*/
    @GetMapping("finished_list")
    public void finishedList(Model model, HttpServletRequest req,
                     @RequestParam(defaultValue = "3") int pageSize,
                     @RequestParam(defaultValue = "1") int curPage) throws Exception {
        List<Donation> donations = donationService.list();
        int listCnt = donations.size();

        List<Donation> finishedList = donationService.finishedList();
        int finishedListSize = finishedList.size();

        Pagination finishedPagination = new Pagination(finishedListSize, curPage, pageSize);
        model.addAttribute("finishedListCnt", finishedListSize);
        model.addAttribute("finishedPagination", finishedPagination);



        model.addAttribute("donations", donations);
        model.addAttribute("finishedList", finishedList);
        model.addAttribute("pageSize", pageSize);

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

            // Date로 변환된 두 날짜를 계산한 뒤 그 리턴값으로 long type 변수를 초기화 하고 있다.
            // 연산결과 -950400000. long type 으로 return 된다.
            long calDate = FirstDate.getTime() - SecondDate.getTime();

            // Date.getTime() 은 해당날짜를 기준으로1970년 00:00:00 부터 몇 초가 흘렀는지를 반환해준다.
            // 이제 24*60*60*1000(각 시간값에 따른 차이점) 을 나눠주면 일수가 나온다.
            long calDateDays = calDate / ( 24*60*60*1000);

            // 두 날짜의 차이

            if(calDateDays < 0) {
                donationIndex.add(i);
            }

        }
        int index = donationIndex.get(0);
        Donation oneDonation = donations.get(index);
        model.addAttribute("oneDonation", oneDonation);


    }

    @GetMapping("paging/finishedList")
    @ResponseBody
    private List<Donation> pagingFinishedListList() throws Exception{
        ArrayList<Donation> arrayList = (ArrayList<Donation>)donationService.finishedList();
        List<Donation> list = donationService.finishedList();
        for(int i=0; i<list.size(); i++) {
            System.out.println("사이즈맞나?!#@@@@@@@@@@@@" + list.size() + "번호는?:"+list.get(i).getName());
        }

        return arrayList;
    }

    /*@GetMapping("/test.json")
    @ResponseBody
    private JSONArray testJson() throws Exception{
        List<Donation> list = donationService.finishedList();
        JSONArray mapResult = JSONArray.fromObject(list);

        return mapResult;
    }*/







    /* 기부 추가 입력폼 */
    @GetMapping("form")
    public void form() throws Exception {
    }

    /* 기부 후 확인창 */
    @GetMapping("donation_confirm")
    public void donationConfirm(HttpServletRequest request,
                                @RequestParam("donateMoney") int donateMoney,
                                @RequestParam("donationNo") int donationNo,
                                Model model) throws Exception {
        Donation donation = donationService.get(donationNo);
        model.addAttribute("donateMoney",donateMoney);
        model.addAttribute("donation",donation);
    }

    /* 충전 후 확인창 */
    @GetMapping("charge_confirm")
    public void chargeConfirm(HttpServletRequest request,
                                @RequestParam("chargeDonationNo") int chargeDonationNo,
                                @RequestParam("chargeAmount") int chargeAmount,
                                @RequestParam("memberMoney") int memberMoney,
                                Model model) throws Exception {
        Donation donation = donationService.get(chargeDonationNo);
        model.addAttribute("chargeAmount",chargeAmount);
        model.addAttribute("memberMoney",memberMoney);
        model.addAttribute("donation",donation);
    }

    /* 기부 추가 기능 */
    @PostMapping("add")
    public String add(Donation donation, MultipartFile file) throws Exception {
        donation.setThumbnail(writeFile(file));
        donation.setTotalAmount(0);
        donation.setCountCmt(0);
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
    public void detail(HttpSession session, Model model, int no) throws Exception {
        Donation donation = donationService.get(no);
        List<DonationComment> donationComments = donationCommentService.list(no);

        int count = donationCommentService.countCmt(no);
        model.addAttribute("donation", donation);
        model.addAttribute("countCmt", count);

    }

    @GetMapping("detail_form")
    public void detailForm(Model model, int no) throws Exception {
        Donation donation = donationService.get(no);
        model.addAttribute("donation", donation);
    }

    @PostMapping("update")
    public String update(Donation donation, MultipartFile file) throws Exception {
        donation.setThumbnail(writeFile(file));
        donationService.update(donation);
        return "redirect:list";
    }

    @GetMapping("delete")
    public String delete(int no) throws Exception {
        donationService.delete(no);
        return "redirect:list";
    }

    @PostMapping("charge")
    @RequestMapping(value = "charge", method = RequestMethod.POST)
    public String charge(RedirectAttributes redirect, @ModelAttribute("loginUser") Member member, Model model, int chargeDonationNo, int chargeMemberNo, int chargeAmount, ChargeHistory chargeHistory) throws Exception {
        System.out.println("들어왔니?");
        System.out.println("chargeDonationNo:"+chargeDonationNo + ",chargeMemberNo:"+chargeMemberNo+",chargeAmount:"+chargeAmount);

        Donation donation = donationService.get(chargeDonationNo);
        member = memberService.get(chargeMemberNo);
        member.setMoney(member.getMoney()+chargeAmount);

        memberService.update(member);

        model.addAttribute("donation", donation);
        model.addAttribute("loginUser", member);

        chargeHistory.setMemberNo(member.getNo());
        chargeHistory.setChargeAmount(chargeAmount);
        memberService.insertChargeHistory(chargeHistory);

        redirect.addAttribute("chargeDonationNo", chargeDonationNo);
        redirect.addAttribute("chargeAmount", chargeAmount);
        redirect.addAttribute("memberMoney", member.getMoney());
        return "redirect:charge_confirm";
    }

    @PostMapping("donate")
    public String donate(RedirectAttributes redirect, @ModelAttribute("loginUser") Member member, Model model, int no, int memberNo, int money, DonationHistory donationHistory) throws Exception {
        Donation donation = donationService.get(no);
        member = memberService.get(memberNo);
        donation.setTotalAmount(donation.getTotalAmount()+money);
        member.setMoney(member.getMoney()-money);

        memberService.update(member);
        donationService.update(donation);

        model.addAttribute("donation", donation);
        model.addAttribute("loginUser", member);

        donationHistory.setMemberNo(member.getNo());
        donationHistory.setDonaNo(donation.getNo());
        donationHistory.setDonateAmount(money);
        donationService.insertDonationHistory(donationHistory);

        redirect.addAttribute("donateMoney", money);
        redirect.addAttribute("donationNo", no);
        //return "redirect:detail?no="+no;
        return "redirect:donation_confirm";
    }

    @GetMapping("comment/list")
    @ResponseBody
    private List<DonationComment> commentList(int no,
                                              @RequestParam int cnt) throws Exception{
        ArrayList<DonationComment> arrayList = (ArrayList<DonationComment>)donationCommentService.list(no);
        List<DonationComment> list = donationCommentService.list(no);


        return arrayList;
    }

    @PostMapping("comment/add")
    @ResponseBody
    public void commentAdd(
            HttpSession session,
            @RequestParam int donaNo,
            @RequestParam String commentContents) throws Exception {
        Member member = (Member) session.getAttribute("loginUser");
        int memberNo = member.getNo();
        DonationComment comment = new DonationComment();
        Donation donation = donationService.get(donaNo);
        comment.setDonationNo(donaNo);
        comment.setContent(commentContents);
        comment.setMemberNo(memberNo);
        comment.setParentCommentNo(0);
        comment.setIsDeleted("N");

        int count = donationCommentService.countCmt(donaNo);

        donation.setCountCmt(count+1);
        donationService.update(donation);
        donationCommentService.insert(comment);
    }

    @PostMapping("comment/replyAdd")
    @ResponseBody
    public void replyAdd(
            HttpSession session,
            int donaNo,
            String recommentContents,
            int parentNo) throws Exception {
        Member member = (Member) session.getAttribute("loginUser");
        int memberNo = member.getNo();
        DonationComment comment = new DonationComment();
        Donation donation = donationService.get(donaNo);
        comment.setDonationNo(donaNo);
        comment.setContent(recommentContents);
        comment.setMemberNo(memberNo);
        comment.setParentCommentNo(parentNo);
        comment.setIsDeleted("N");

        int count = donationCommentService.countCmt(donaNo);

        donation.setCountCmt(count+1);
        donationService.update(donation);
        donationCommentService.insert(comment);
    }



    @RequestMapping("comment/update")
    @ResponseBody
    private void commentUpdate(@RequestParam int commentNo, @RequestParam String commentContents) throws Exception{

        DonationComment comment = new DonationComment();
        comment.setCommentNo(commentNo);
        comment.setContent(commentContents);

        donationCommentService.update(comment);
    }

    @RequestMapping("comment/delete/{commentNo}")
    @ResponseBody
    private void commentDelete(int no, @PathVariable int commentNo) throws Exception{
        Donation donation = donationService.get(no);
        int count = donationCommentService.countCmt(no);

        int childCount = donationCommentDao.countChild(commentNo);
        if (childCount != 0) {
            donation.setCountCmt(count-(childCount+1));
            donationService.update(donation);
            donationCommentService.deleteMeAndChild(commentNo);
        } else {
            donation.setCountCmt(count-1);
            donationService.update(donation);
            donationCommentService.delete(commentNo);
        }
    }

    @RequestMapping("comment/safeDelete/{commentNo}")
    @ResponseBody
    private void commentSafeDelete(@PathVariable int commentNo) throws Exception{
        donationCommentService.safeDelete(commentNo);
    }


}
