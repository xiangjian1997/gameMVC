package com.wanmait.ider.webcontroller;

import com.wanmait.ider.dao.impl.GameDao;
import com.wanmait.ider.dao.impl.TypeDao;
import com.wanmait.ider.pojo.GameType;
import com.wanmait.ider.util.Page;
import com.wanmait.ider.pojo.Type;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/web/")
public class GameController {
    /**
     * 处理异常
     **/
    @ExceptionHandler(Exception.class)
    public ModelAndView processException(Exception e) {
        System.out.println();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("msg", "错误" + e.getMessage());
        return modelAndView;
    }


    @RequestMapping("game_type")
//    public void gameIndex()
//    {
//        ModelAndView modelAndView=new ModelAndView();
//        modelAndView.setViewName("redirect:/web/game_index/0/0/0");
//    }
//    @RequestMapping("game_index/{typeId}/{language}/{year}")
//    public ModelAndView gameIndex(@PathVariable("typeId")String typeId,@PathVariable("language")String language,@PathVariable("year")String year)
    public ModelAndView gameIndex(Integer num) {
        ModelAndView modelAndView = new ModelAndView();
        List<GameType> all = GameDao.getGameDao().getGame();

        Page page = new Page();
        /*设置每页的游戏数目*/
        page.setSize(12);
        /*设置总数*/
        page.setSum(all.size());
        /*设置当前的页码*/
        page.setPresent(num);
        List<GameType> gameTypes = page.getThisData(all);
        //游戏主页的类型
        modelAndView.addObject("gameTypes", gameTypes);
        modelAndView.addObject("page", page);
        modelAndView.setViewName("/web/game_type");
        return modelAndView;
    }
    /*分类等*/
    @RequestMapping("game_type/{typeId}")
    public ModelAndView gameIndex(@PathVariable("typeId") String typeId) {
        ModelAndView modelAndView = new ModelAndView();  
        System.out.println(typeId);
        modelAndView.setViewName("/web/game_type");
        return modelAndView;
    }


}
