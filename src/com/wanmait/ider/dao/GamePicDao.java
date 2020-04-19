package com.wanmait.ider.dao;


import com.wanmait.ider.util.DBHelper;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GamePicDao
{
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    private DBHelper dbhelper=DBHelper.getDBHelper();
    private GamePicDao(){}
    public static GamePicDao getGamePicDao()
    {
        GamePicDao gamePicDao=new GamePicDao();
        return gamePicDao;
    }
}
