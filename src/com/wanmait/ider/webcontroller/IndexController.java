package com.wanmait.ider.webcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class IndexController
{
    @RequestMapping(value = {"/index","/"})
    public ModelAndView index()
    {
        ModelAndView modelAndView=new ModelAndView();
        //将主页数据需要的数据取出保存到application中,
        modelAndView.setViewName("web/head/index");
        return modelAndView;
    }
}
