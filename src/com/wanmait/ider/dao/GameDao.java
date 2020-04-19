package com.wanmait.ider.dao;

import com.wanmait.ider.util.DBHelper;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GameDao
{
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    private DBHelper dbhelper=DBHelper.getDBHelper();
    private GameDao(){}
    public static GameDao getGameDao()
    {
        GameDao gameDao=new GameDao();
        return gameDao;
    }
}
