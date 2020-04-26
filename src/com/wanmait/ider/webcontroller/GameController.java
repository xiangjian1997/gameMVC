package com.wanmait.ider.webcontroller;

import com.wanmait.ider.dao.impl.GameDao;
import com.wanmait.ider.dao.impl.TypeDao;
import com.wanmait.ider.pojo.GameType;
import com.wanmait.ider.pojo.Type;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/web/")
public class GameController
{
    @RequestMapping("game_type")
//    public void gameIndex()
//    {
//        ModelAndView modelAndView=new ModelAndView();
//        modelAndView.setViewName("redirect:/web/game_index/0/0/0");
//    }
//    @RequestMapping("game_index/{typeId}/{language}/{year}")
//    public ModelAndView gameIndex(@PathVariable("typeId")String typeId,@PathVariable("language")String language,@PathVariable("year")String year)
    public ModelAndView gameIndex()
    {
        ModelAndView modelAndView=new ModelAndView();
        List<GameType> gameTypes=GameDao.getGameDao().getGame();
        //游戏主页的类型
        List<Type> types= TypeDao.getTypeDao().getAllType();
        modelAndView.addObject("types",types);
        modelAndView.addObject("gameTypes",gameTypes);
        modelAndView.setViewName("/web/game_type");
        return modelAndView;
    }
        @RequestMapping("game_index/{typeId}")
        public ModelAndView gameIndex(@PathVariable("typeId")String typeId)
        {
            ModelAndView modelAndView=new ModelAndView();
            System.out.println(typeId);
            modelAndView.setViewName("/web/game_type");
            return modelAndView;
        }
}
