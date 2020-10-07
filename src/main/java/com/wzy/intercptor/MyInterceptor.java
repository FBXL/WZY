package com.wzy.intercptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MyInterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        //如果URL请求路径中包含这两个就不拦截  返回true就是不拦截 通过 执行下一个拦截器
        if (request.getRequestURI().contains("login")
              || request.getRequestURI().contains("verify")
              || request.getRequestURI().contains("register")){
            return true;
        }
        //登录后会把name存到session中  如果session中的name为空就拦截请求
        if (session.getAttribute("name") != null){
            return true;
        }
        response.sendRedirect("index.jsp");
        return false;
    }
}
