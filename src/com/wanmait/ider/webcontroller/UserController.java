package com.wanmait.ider.webcontroller;

import com.wanmait.ider.dao.impl.UserDao;
import com.wanmait.ider.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
@RequestMapping("/web/")
public class UserController
{
    @RequestMapping("register")         //跳转注册页面
    public String register() { return "web/register"; }

    @PostMapping("user/register")       //注册页面的注册提交
    public void setUser(User u,HttpSession session) {
        //注册用户         --获取填写验证码  request.getParameter("emYzm");   将自动生成的验证码保存到session中在此判断
        if(u.getEmail()!=null)
        {
            boolean flag=UserDao.getUserDao().checkEmail(u.getEmail());
            if(flag==false)
            {
                UserDao.getUserDao().setUser(u);
            }
        }
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("/web/index");
    }

    public void checkhave(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //检查邮箱是否被注册
        PrintWriter out=response.getWriter();
        String email=request.getParameter("email");
        boolean flag=UserDao.getUserDao().checkEmail(email);
        if (flag)
        {
            out.print("1");
//            this.redirect("/index.jsp",request,response);
        }
        else{
            out.print("0");
        }
    }
    @PostMapping("login")       //用户登录
    @ResponseBody
    public void checkUserP(User user, HttpServletRequest request, HttpServletResponse response) throws IOException {
        //登录判断用户名和密码
        ModelAndView modelAndView=new ModelAndView();
        if(null!=user/*username&&null!=password*/)
        {
            PrintWriter out=response.getWriter();
            User temp= UserDao.getUserDao().getUser(user);
            if(null!=temp)
            {
                HttpSession session=request.getSession();
                session.setAttribute("temp",temp);
                out.print('1');
            }
            else {
                out.print("0");
            }
        }
    }
    //退出
    @PostMapping("user/userExit")
    public ModelAndView webExit(HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView();
        HttpSession session=request.getSession();
        session.setAttribute("temp",null);
        modelAndView.setViewName("/web/index");
        return modelAndView;
    }
    protected void updateUser(HttpServletRequest request)  //更新用户数据库数据
    {
        String nickname=request.getParameter("nickname");
        String gender=request.getParameter("gender");
        UserDao.getUserDao().updateUser(nickname,gender);
        //更新temp的数据
        HttpSession session=request.getSession();
        User temp=(User)session.getAttribute("temp");
        temp.setSex(gender);
        temp.setNickname(nickname);
        session.setAttribute("temp",temp);
//        this.redirect("/needsigin/personal.jsp",request,response);
    }
    //访问个人资料页开始
    @RequestMapping("/user/{type}")
    public String Comment(@PathVariable("type")String type)
    {
        return "/web/user/"+type;
    }
    @RequestMapping("user")
    public String personal()
    {
        return "/web/user/personal";
    }

}
