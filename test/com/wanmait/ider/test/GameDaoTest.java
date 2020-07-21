package com.wanmait.ider.test;

import com.wanmait.ider.dao.impl.GameDao;
import com.wanmait.ider.pojo.GameType;
import com.wanmait.ider.util.Page;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

public class GameDaoTest {
    @org.junit.Test
    public void test()
    {
//        PageHelper.startPage(2, 12);
//        List<GameType> gameTypes = GameDao.getGameDao().getGame();
//        PageInfo<GameType> gameTypePageInfo = new PageInfo<>(gameTypes, 9);
//        System.out.println(gameTypePageInfo);
        Page page=new Page();
        page.setSize(12);
        ModelAndView modelAndView=new ModelAndView();
        List<GameType> gameTypes=GameDao.getGameDao().getGame();
        /*设置总数*/
        page.setCount(gameTypes.size());
        /*设置当前的页码*/
        page.setPresent(1);


        List<GameType> all=page.getThisData(gameTypes);
        System.out.println(all.get(0).toString());
    }
}
