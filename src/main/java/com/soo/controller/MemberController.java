package com.soo.controller;

import com.soo.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.File;
import java.lang.reflect.Member;
import java.util.List;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Resource private MemberService memberService;

    @GetMapping("list")
    public void list(Model model) throws Exception {
        List<Member> members = memberService.list();
        model.addAttribute("members", members);
    }
}
