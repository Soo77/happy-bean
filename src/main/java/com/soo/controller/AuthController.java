package com.soo.controller;

import com.soo.domain.Member;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.UUID;

@Controller
@RequestMapping("/auth")
public class AuthController {



    @GetMapping("signUpForm")
    public void signUpForm() {
    }

    @GetMapping("idCheckForm")
    public void idCheckForm() {
    }


}
