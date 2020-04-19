package com.wanmait.ider.dao;

import com.wanmait.ider.util.DBHelper;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class SiteDao
{
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    private String sql="";
    private DBHelper dbhelper=DBHelper.getDBHelper();
    private SiteDao(){}
    public static SiteDao getSiteDao()
    {
        SiteDao siteDao=new SiteDao();
        return siteDao;
    }
    public List<String> getData(){//获取数据
        sql="";
        return null;
    }
}
