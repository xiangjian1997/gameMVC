package com.wanmait.ider.webcontroller;

import com.wanmait.ider.dao.GameTypeDao;
import com.wanmait.ider.pojo.GameType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;


@Controller
@RequestMapping("/web/")
public class GameTypeController
{
    @RequestMapping("game_details")
    public ModelAndView getDataGame(Integer id)  {
        //游戏页面获取数据
        ModelAndView modelAndView=new ModelAndView();
        Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
        if (pattern.matcher(id+"").matches()) {
            GameType gameType = GameTypeDao.getGameTypeDao().getGame(id+"");
            modelAndView.addObject("gameT",gameType);
            modelAndView.setViewName("web/game_details");
        }
        else{modelAndView.setViewName("web/game_index");}
        return modelAndView;
    }
}
