package com.soo.controller;

import com.soo.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/main")
public class MainController {

    @Resource private MemberService memberService;

    @GetMapping("index")
    public void index() {
    }

    @GetMapping("index2")
    public void index2() {
    }
}
