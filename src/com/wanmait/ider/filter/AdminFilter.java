package com.wanmait.ider.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AdminFilter implements Filter {
    /*过滤器初始化*/
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        // 对request、response进行一些预处理
//        servletRequest.setCharacterEncoding("UTF-8");
//        servletResponse.setCharacterEncoding("UTF-8");
//        servletResponse.setContentType("text/html;charset=UTF-8");
        HttpServletRequest request=(HttpServletRequest)servletRequest;
        HttpServletResponse response=(HttpServletResponse)servletResponse;
        HttpSession session=request.getSession();
//        String basePath = request.getScheme()+"://"
//                +request.getServerName()+":"+request.getServerPort()+request.getContextPath()  +"/";
        System.out.println(request.getRequestURL());
        if(null==session.getAttribute("admin")){
            if(request.getRequestURI().endsWith("/back/login")){
                filterChain.doFilter(servletRequest,servletResponse);
            }
            else {
                response.sendRedirect(request.getContextPath()+"/back/login");
            }
        }else {
            filterChain.doFilter(servletRequest,servletResponse);
        }

    }

    /*Filter销毁时，执行*/
    @Override
    public void destroy() {
        System.out.println("过滤器销毁================");
    }
}
