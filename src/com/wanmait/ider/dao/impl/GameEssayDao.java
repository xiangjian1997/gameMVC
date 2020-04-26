package com.wanmait.ider.dao.impl;

import com.wanmait.ider.util.DBHelper;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GameEssayDao
{
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    private DBHelper dbhelper=DBHelper.getDBHelper();
    private GameEssayDao(){}
    public static GameEssayDao getGameEssayDao()
    {
        GameEssayDao gameEssayDao=new GameEssayDao();
        return gameEssayDao;



    }
}
