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

@ControllerAdvice
public class AdviceController
{
    @InitBinder//时间的处理
    public void initBinder(WebDataBinder binder)
    {
        DateFormat dateFormat=new SimpleDateFormat("yyyy-mm-dd");//格式
        binder.registerCustomEditor(Date.class,new CustomDateEditor(dateFormat,true));
    }
    @ExceptionHandler(Exception.class)
    public ModelAndView CommentException()
    {
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("");
        return modelAndView;
    }
}
