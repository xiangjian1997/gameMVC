package com.wanmait.ider.dao.impl;

import com.wanmait.ider.pojo.Type;
import com.wanmait.ider.util.DBHelper;
import org.apache.ibatis.session.SqlSession;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
    public List<Type> getAllType()
    {

        ArrayList<Type>types=new ArrayList<>();
        String sql="select * from type where enable=1";
        Connection connection=dbhelper.getConnection();
        try {
            ps=connection.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next())
            {
                Type type=new Type();
                type.setId(rs.getInt("id"));
                type.setTypeName(rs.getString("type_name"));
                type.setEnable(rs.getBoolean("enable"));
                types.add(type);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            dbhelper.close(connection,ps,rs);
        }
        return types;
    }


}
