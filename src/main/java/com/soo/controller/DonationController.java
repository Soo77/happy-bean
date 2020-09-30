package com.soo.controller;

import com.soo.domain.Member;
import com.soo.service.AuthService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.HashMap;


@Controller
@RequestMapping("/donation")
public class DonationController {



    /* 기부 리스트 */
    @GetMapping("list")
    public void list() {
    }


}
