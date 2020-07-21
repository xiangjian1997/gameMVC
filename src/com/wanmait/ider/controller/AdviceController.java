package com.wanmait.ider.controller;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.servlet.ModelAndView;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@ControllerAdvice       //此注解
public class AdviceController
{
    @InitBinder//时间的处理
    public void initBinder(WebDataBinder binder)
    {
        DateFormat dateFormat=new SimpleDateFormat("yyyy-mm-dd");//格式
        binder.registerCustomEditor(Date.class,new CustomDateEditor(dateFormat,true));
    }

    @ExceptionHandler(Exception.class)
    public ModelAndView CommentException(Exception e)
    {
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("msg","错误"+e.getMessage());
        modelAndView.setViewName("web/404");
        return modelAndView;
    }


//    /**
//     *处理异常
//     **/
//    @ExceptionHandler(Exception.class)
//    public ModelAndView processException(Exception e)
//    {
//        System.out.println();
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.addObject("msg","错误"+e.getMessage());
//        return modelAndView;
//    }
}
