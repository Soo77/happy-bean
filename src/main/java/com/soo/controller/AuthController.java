package com.soo.controller;

import com.soo.dao.AuthDao;
import com.soo.domain.Member;
import com.soo.service.AuthService;
import com.soo.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping("/auth")
public class AuthController {

    @Resource
    private AuthService authService;


    /* 회원가입 창 */
    @GetMapping("signUpForm")
    public void signUpForm() {
    }

    /* ID 중복체크 창 */
    @GetMapping("idCheckForm")
    public void idCheckForm() {
    }

    /* ID 중복체크 액션 */

    /**
     *
     * @param request 파라미터에서 아이디 가져옴
     * @param response 0이랑 1 out.println으로 써야되는데 utf-8로 변환하려고
     * @return null... 
     * @throws Exception
     */
    @PostMapping("checkId")
    public String checkId(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String id = request.getParameter("id");
        boolean result = authService.duplicateIdCheck(id);
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        if(result)    out.println("0"); // 아이디 중복
        else        out.println("1");
        out.close();
        return null;
    }

    /* 로그인 창 */
    @GetMapping("signInForm")
    public void signInForm() {
    }
//loginCheck

    /**
     *
     * @param response
     * @param session
     * @param id
     * @param password
     * @return
     * @throws Exception
     */

    // TODO: 이렇게하는거야?
    @PostMapping("login")
    public String login(HttpServletResponse response, HttpSession session, String id, String password)
            throws Exception {
        System.out.println("Im in.");

        HashMap<String,Object> params = new HashMap<>();
        params.put("id", id);
        params.put("password", password);

        Member member = authService.findByIdPw(params);
        System.out.println("im here");
        if (member == null) {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('로그인 정보를 확인해주세요.'); location.href=\'../auth/signInForm\';</script>");
            out.flush();

            return null;

        }

        session.setAttribute("loginUser", member);

        return "redirect:../main/index";
    }

    @GetMapping("logout")
    public String logout(HttpSession session)
            throws Exception {
        session.invalidate();
        return "redirect:../main/index";
    }




}
