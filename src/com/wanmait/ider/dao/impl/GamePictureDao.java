package com.wanmait.ider.dao.impl;


import com.wanmait.ider.util.DBHelper;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GamePictureDao
{
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    private DBHelper dbhelper=DBHelper.getDBHelper();
    private GamePictureDao(){}
    public static GamePictureDao getGamePicDao()
    {
        GamePictureDao gamePictureDao =new GamePictureDao();
        return gamePictureDao;
    }
}
