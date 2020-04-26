package com.wanmait.ider.dao.impl;



import com.wanmait.ider.pojo.User;
import com.wanmait.ider.util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao
{
    private static UserDao userDao;
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    private DBHelper dbhelper=DBHelper.getDBHelper();
    private UserDao(){}
    public static UserDao getUserDao()
    {
        if(null==userDao)
        {
            userDao=new UserDao();
        }
        return userDao;
    }


    public void setUser( User user)               //注册添加用户
    {
        Connection conn=dbhelper.getConnection();
        String sql="insert into user (name,password,email,nickname) values(?,?,?,nickname=40000)";
        try {
            ps=conn.prepareStatement(sql);
            ps.setObject(1, user.getName());
            ps.setObject(2, user.getPassword());
            ps.setObject(3,user.getEmail());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            dbhelper.close(conn,ps,rs);
        }
    }
    public User getUser(User user)                     //判断用户名和密码是否正确--》用户登录
    {
        User temp=null;
        Connection conn=dbhelper.getConnection();

        //sql语句面对百万数据很慢
        String sql="select * from user where password=? and name=? and enable=1 union  " +
                "select * from user where password=? and phone=? and enable=1 union " +
                "select * from user where password=? and email=? and enable=1";
        try {
            ps=conn.prepareStatement(sql);                          //待简化
            ps.setObject(2,user.getName());
            ps.setObject(4,user.getName());
            ps.setObject(6,user.getName());
            ps.setObject(1,user.getPassword());
            ps.setObject(3,user.getPassword());
            ps.setObject(5,user.getPassword());
            rs=ps.executeQuery();
            if(rs.next()==true)
            {
                temp=new User();
                temp.setPassword(rs.getString("password"));
                temp.setName(rs.getString("name"));
                temp.setEmail(rs.getString("email"));
                temp.setPhone(rs.getString("phone"));
                temp.setRegistrationTime(rs.getTimestamp("registration_time"));
                temp.setSex(rs.getString("sex"));
                temp.setBorn(rs.getDate("born"));
                temp.setHeadPicture(rs.getString("head_picture"));
                temp.setNickname(rs.getString("nickname"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            dbhelper.close(conn,ps,rs);
        }
        return temp;
    }
    public boolean checkEmail(String email)        //检查邮箱是否已被注册
    {
        Connection conn=dbhelper.getConnection();
        String sql="select * from user where email=?";
        boolean flag=true;
        try {
            ps=conn.prepareStatement(sql);
            ps.setObject(1,email);
           rs=ps.executeQuery();
           if(rs.next()==true)
           {
               flag=true;
           }
           else
           {flag=false;}
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            dbhelper.close(conn,ps,rs);
        }
        return flag;
    }
    public void updateUser(String nickname,String gender)
    {
        String sql="update user set nickname=?,sex=? where enable=1 and id=1";
        dbhelper.updateData(sql,nickname,gender);
    }
}
