package com.wanmait.ider.controller;

import com.wanmait.ider.dao.impl.AdminDao;
import com.wanmait.ider.pojo.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.filter.CharacterEncodingFilter;      //过滤器   可设置请求和响应编码
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/back")
public class AdminController {

    @RequestMapping("design")
    public void design() {

    }

    //重定向不会加前缀的后缀，直接到地址
//redirect重定向       redirect:/admin/index
    @GetMapping("index")
    public void index() {

    }

    @PostMapping("login")
    public void backIndex(Admin admin, HttpServletRequest request) {

        Admin admin1 = AdminDao.getAdminDao().login(admin);
        if (null != admin1) {
            request.getSession().setAttribute("admin", admin1);
        } else {

        }
    }

    @RequestMapping("insert")
    public void insert() {

    }

    @GetMapping("login")
    public void login() {

    }

    @RequestMapping("system")
    public void system() {

    }


    /*管理员登录*/
    @RequestMapping("login11")
    public void login(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        Admin admin = (Admin) request.getSession().getAttribute("admin");
        if (null != admin) {

        }
    }
}
