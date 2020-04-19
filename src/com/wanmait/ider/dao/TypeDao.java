package com.wanmait.ider.dao;



import com.wanmait.ider.util.DBHelper;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TypeDao
{
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    private DBHelper dbhelper=DBHelper.getDBHelper();
    private TypeDao(){}
    public static TypeDao getTypeDao()
    {
        TypeDao typeDao=new TypeDao();
        return typeDao;
    }
}
