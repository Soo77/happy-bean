package com.soo.controller;

import com.soo.dao.MemberDao;
import com.soo.domain.Member;
import com.soo.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Resource private MemberService memberService;

    String uploadDir;
    public MemberController(ServletContext sc) {
        uploadDir = sc.getRealPath("/upload/member");
    }

    @GetMapping("index")
    public void index() {

    }

    @PostMapping("add")
    public String add(Member member, MultipartFile file) throws Exception {
        System.out.println("ho");
        member.setPhoto(writeFile(file));
        member.setMemberTypeCode("M01002"); // 일반회원 코드
        memberService.insert(member);
        return "redirect:../main/index";
    }

    @GetMapping("list")
    public void list(Model model) throws Exception {
        System.out.println("hi");
        List<Member> members = memberService.list();
        model.addAttribute("members", members);
    }

    private String writeFile(MultipartFile file) throws Exception {
        if(file.isEmpty())
            return null;

        String filename = UUID.randomUUID().toString();
        file.transferTo(new File(uploadDir + "/" + filename + ".jpg"));
        return filename;
    }

}
