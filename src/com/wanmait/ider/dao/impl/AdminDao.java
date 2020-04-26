package com.wanmait.ider.dao.impl;

import com.wanmait.ider.pojo.Admin;
import com.wanmait.ider.util.DBHelper;
import org.apache.ibatis.session.SqlSession;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class AdminDao
{
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    private DBHelper dbhelper=DBHelper.getDBHelper();
    private AdminDao(){}
    public static AdminDao getAdminDao()
    {
        AdminDao adminDao=new AdminDao();
        return adminDao;
    }

    //添加管理员
    public void addAdmin(){

    }
}
