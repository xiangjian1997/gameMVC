package com.wanmait.ider.dao;

import com.wanmait.ider.util.DBHelper;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EssayTalkDao
{
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    private DBHelper dbhelper=DBHelper.getDBHelper();
    private EssayTalkDao(){}
    public static EssayTalkDao getEssayTalkDao()
    {
        EssayTalkDao essayTalkDao=new EssayTalkDao();
        return essayTalkDao;
    }
}
