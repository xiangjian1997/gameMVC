package com.wanmait.ider.util;

import java.sql.*;
import java.util.ResourceBundle;

public class DBHelper
{
    private static String url,user, password;
    private DBHelper(){}
    private static ResourceBundle resourceBundle=ResourceBundle.getBundle("dbconfig");      //读取dbconfig配置文件
    public static DBHelper getDBHelper() {
        DBHelper dbHelper=new DBHelper();
        return dbHelper;
    }
    //优化
    static{
        try {
            url=resourceBundle.getString("url");
            user=resourceBundle.getString("user");
            password=resourceBundle.getString("password");
            //加载驱动
            Class.forName(resourceBundle.getString("driverName"));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    //加载驱动
    public static Connection getConnection()
    {
        Connection conn=null;
        try {
            conn = DriverManager.getConnection(url, user, password);
        }catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return conn;
    }
    //更新数据和添加
    public int updateData(String sql, Object... args)
    {
        int shu=0;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs=null;
        conn=this.getConnection();
        try {
            ps=conn.prepareStatement(sql);
            int i=0;
            for(Object o:args)
            {
                System.out.println(o);
                ps.setObject(i+1,o);
                i++;
            }
            shu=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            this.close(conn,ps,rs);
        }
        return shu;
    }
    //关闭
    public void close(Connection conn, PreparedStatement ps, ResultSet rs)
    {
        this.close(conn);
        this.close(ps);
        this.close(rs);
    }

    private void close(Connection conn)
    {
        if(null!=conn)
        {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    private void close(PreparedStatement ps)
    {
        if(null!=ps)
        {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    private void close(ResultSet rs)
    {
        if(null!=rs)
        {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
