package com.wanmait.ider.listener;

import com.wanmait.ider.dao.GameTypeDao;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.List;

@WebListener
public class ContextListener implements ServletContextListener{
    //项目启动自动执行
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        //此处可以将application的数据写入
        //数据缓存用
        //游戏排行数据
            List all= GameTypeDao.getGameTypeDao().getData();
            sce.getServletContext().setAttribute("all",all);
        //游戏分类界面数据
        List gameType=GameTypeDao.getGameTypeDao().getGameType();
        sce.getServletContext().setAttribute("gameType",gameType);
    }
    //项目停止时执行
    @Override
    public void contextDestroyed(ServletContextEvent sce)
    {

    }
}
