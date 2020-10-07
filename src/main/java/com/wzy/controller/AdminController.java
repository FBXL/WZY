package com.wzy.controller;

import com.wzy.pojo.Admin;
import com.wzy.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller()
public class AdminController {

    @Autowired
    AdminService adminService;

    @RequestMapping(path = "/verifyName", produces = "text/html;charset=utf-8;")
    @ResponseBody
    public String verifyName(String name) {
        System.out.println(name);
        String verifyName = adminService.verifyName(name);
        String flag = "false";
        if (verifyName != null) {
            flag = "ok";
        }
        return flag;
    }

    @RequestMapping(path = "/login", produces = "text/utf-8;charset=utf-8;")
    @ResponseBody
    public String login(String name, String password, HttpServletRequest request) {
        System.out.println("登录的controller");
        System.out.println(name + "-----" + password);

        Integer integer = adminService.login(name, password);
        System.out.println(integer);
        String flag = "false";
        if (integer != null) {
            request.getSession().setAttribute("name", name);
            flag = "success";
        }
        return flag;
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
        request.getSession().removeAttribute("name");
        return "redirect:index.jsp";
    }

    @RequestMapping("/register")
    public String register(String name,String password) {
        System.out.println(name+"------"+password);
        Integer integer = adminService.register(new Admin(name, password));
        return "redirect:index.jsp";
    }

}
