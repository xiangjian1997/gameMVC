package com.wanmait.ider.dao.impl;

import com.wanmait.ider.pojo.Admin;
import com.wanmait.ider.util.DBHelper;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class AdminDao {
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private DBHelper dbhelper = DBHelper.getDBHelper();

    private AdminDao() {
    }

    public static AdminDao getAdminDao() {
        AdminDao adminDao = new AdminDao();
        return adminDao;
    }

    //管理员登录
    public Admin login(Admin admin) {
//        int a = 1, b = 1, c = 1, i = 1;
        Connection connection = DBHelper.getConnection();
        String sql = "select * from admin where enable=1 and password=?";
//        if (null != admin.getName()) {
//            i++;
//            a = i;
//            sql += " and name=? ";
//        }
//        if (null != admin.getPhone()) {
//            i++;
//            b = i;
//            sql += " and phone=?";
//        }
//        if (null != admin.getEmail()) {
//            i++;
//            c = i;
        sql += " and email=?";
//        }
        try {
            ps = connection.prepareStatement(sql);
            ps.setObject(1, admin.getPassword());
//            if (null != admin.getName()) {
//                ps.setObject(a, admin.getName());
//            }
//            if (null != admin.getPhone()) {
//                ps.setObject(b, admin.getName());
//            }
//            if (null != admin.getEmail()) {
            ps.setObject(2, admin.getEmail());
//            }
            rs = ps.executeQuery();
            if (rs.next()) {
                admin.setName(rs.getString("name"));
                admin.setPhone(rs.getString("phone"));
                admin.setEmail(rs.getString("email"));
                admin.setHeadpic(rs.getString("head_pic"));
                admin.setId(rs.getInt("id"));
                admin.setRank(rs.getBoolean("rank"));
                admin.setEnable(rs.getBoolean("enable"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            DBHelper.getDBHelper().close(connection, ps, rs);
        }
        return admin;
    }

    //添加管理员
    public void addAdmin() {

    }

    //管理员退出
    public void exit(HttpServletRequest request) {
        request.getSession().setAttribute("admin", null);
    }
}
