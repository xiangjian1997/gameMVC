package com.wanmait.ider.dao;

import com.wanmait.ider.pojo.Game;
import com.wanmait.ider.pojo.GamePic;
import com.wanmait.ider.pojo.GameType;
import com.wanmait.ider.pojo.Type;
import com.wanmait.ider.util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GameTypeDao
{
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    private DBHelper dbhelper=DBHelper.getDBHelper();
    private GameTypeDao(){}
    private String sql="select * from type,game_type,game_pic,game,(Select gamename, " +
            "    ELT(INTERVAL(CONV(HEX(left(CONVERT(`gamename` USING gbk),1)),16,10), " +
            "        0xB0A1,0xB0C5,0xB2C1,0xB4EE,0xB6EA,0xB7A2,0xB8C1,0xB9FE,0xBBF7, " +
            "        0xBFA6,0xC0AC,0xC2E8,0xC4C3,0xC5B6,0xC5BE,0xC6DA,0xC8BB,0xC8F6, " +
            "        0xCBFA,0xCDDA,0xCEF4,0xD1B9,0xD4D1), " +
            "        'A','B','C','D','E','F','G','H','J','K','L','M','N','O','P', " +
            "        'Q','R','S','T','W','X','Y','Z') as PY " +
            "    FROM game )as t where type.id=game_type.type_id " +
            "and game_pic.game_id=game.id and game.id=game_type.game_id " +
            "and type.enable=1 and game_type.enable=1 and game.enable=1 and game_pic.enable=1 ";      //查询分类，游戏及其图片的sql语句并且都没有进行删除的数据
    public static GameTypeDao getGameTypeDao()
    {
        GameTypeDao gameTypeDao=new GameTypeDao();
        return gameTypeDao;
    }
    //主页数据取出
    private List<GameType> get(String x) {//首页游戏数据-->排行榜等数据取出
        List<GameType> gameTypeList=new ArrayList<GameType>();
        GameType gameType=null;

        String sqlY=sql+x;
        Connection connection=dbhelper.getConnection();
        try {
            ps= connection.prepareStatement(sqlY);
            rs=ps.executeQuery();
            for (int i=0;i<20;i++)
            {
                if(rs.next()){
                    gameType=new GameType();
                    Game game=new Game();
                    GamePic gamePic=new GamePic();
                    Type type=new Type();
                    gameType.setEnable(rs.getBoolean("game_type.enable"));
                    //游戏
                    this.setGame(game);
                    //游戏图片
                    gamePic.setId(rs.getInt("game_pic.id"));
                    gamePic.setPicName(rs.getString("pic_name"));
                    gamePic.setGame(game);
                    gamePic.setEnable(rs.getBoolean("game_pic.enable"));
                    ArrayList<GamePic>pics=new ArrayList<>();
                    pics.add(gamePic);
                    //分类
                    type.setId(rs.getInt("type.id"));
                    type.setCname(rs.getString("cname"));
                    type.setEnable(rs.getBoolean("type.enable"));
                    gameType.setGame(game);
                    gameType.setType(type);
                    gameType.setGamePics(pics);
                    gameTypeList.add(gameType);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally{
            dbhelper.close(connection,ps,rs);
        }
        return gameTypeList;
    }
    public List getData(){
        String sqlData[]=new String[]{" group by pic_name order by sort desc",      //游戏热门
                " group by pic_name order by putaway desc",                         //近期新作
                " group by pic_name order by grade desc",                           //评分排行榜
                " group by pic_name",                                               //游戏人气榜
                " group by pic_name order by download_count desc",                  //游戏排行榜
                " and (PY='A' or game.gamename like 'A%') and t.gamename=game.gamename group by pic_name ",      //游戏按字母分类
                " group by pic_name order by putaway desc",                         //按时间排序


        };    //String sqlData[]=new String[10];

        List all=new ArrayList();
        for(int i=0;i<sqlData.length;i++)
        {
            List<GameType> gameTypeList= GameTypeDao.getGameTypeDao().get(sqlData[i]);
            all.add(gameTypeList);
        }
        return all;
    }
    //主页数据结束

    public GameType getGame(String id) {//游戏数据
        GameType gameType=null;
        sql+=" and game.id=?";
        Connection connection=dbhelper.getConnection();
        try {
            ps= connection.prepareStatement(sql);
            ps.setObject(1,id);
            rs=ps.executeQuery();
            int i=0;
            gameType=new GameType();
            Game game=new Game();
            GamePic gamePic=new GamePic();
            Type type=new Type();
            ArrayList<GamePic> gamePics=new ArrayList<>();
            while (rs.next()){
                if(i==0)
                {
                    gameType.setEnable(rs.getBoolean("game_type.enable"));
                    //游戏
                    this.setGame(game);
                    //分类
                    type.setId(rs.getInt("type.id"));
                    type.setCname(rs.getString("cname"));
                    type.setEnable(rs.getBoolean("type.enable"));
                }
                //游戏图片
                gamePic.setId(rs.getInt("game_pic.id"));
                gamePic.setPicName(rs.getString("pic_name"));
                gamePic.setGame(game);
                gamePic.setEnable(rs.getBoolean("game_pic.enable"));
                gamePics.add(gamePic);
            }
            gameType.setGame(game);
            gameType.setType(type);
            gameType.setGamePics(gamePics);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally{
            dbhelper.close(connection,ps,rs);
        }
        return gameType;
    }
    //游戏分类
    public List getGameType()
    {
        List<Type> gameType=new ArrayList();
        String sql="select * from type where enable=1";
        Connection connection=dbhelper.getConnection();
        try {
            ps=connection.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                Type type=new Type();
                type.setId(rs.getInt("id"));
                type.setCname(rs.getString("cname"));
                type.setEnable(rs.getBoolean("enable"));
                gameType.add(type);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            dbhelper.close(connection,ps,rs);
        }
        return gameType;
    }
    //筛选分类
    public List<GameType> getChooseGame(String num)
    {
        List<GameType> chooseGame=new ArrayList<>();
        GameType gameType=null;
        Connection connection=dbhelper.getConnection();
        String shuZu[]=num.split(",");
        if(shuZu[0]!="0"){
            sql=sql+" and type.id="+shuZu[0];
        }
        if(shuZu[1]!="0"){
            sql=sql+" and language="+shuZu[1];
        }
        if(shuZu[2]!="0"){
            sql=sql+" and putaway="+shuZu[2];
        }
        try {
            ps=connection.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next())
            {
                gameType=new GameType();
                Game game=new Game();
                this.setGame(game);
                //分类
                Type type=new Type();
                type.setId(rs.getInt("type.id"));
                type.setCname(rs.getString("cname"));
                type.setEnable(rs.getBoolean("type.enable"));
                //游戏图片
                ArrayList<GamePic> gamePics=new ArrayList<>();
                GamePic gamePic=new GamePic();
                gamePic.setId(rs.getInt("game_pic.id"));
                gamePic.setPicName(rs.getString("pic_name"));
                gamePic.setGame(game);
                gamePic.setEnable(rs.getBoolean("game_pic.enable"));
                gamePics.add(gamePic);
                //
                gameType.setGame(game);
                gameType.setType(type);
                gameType.setGamePics(gamePics);
                gameType.setEnable(rs.getBoolean("game_type.enable"));
                gameType.setId(rs.getInt("game_type.id"));
                chooseGame.add(gameType);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            dbhelper.close(connection,ps,rs);
        }
        return chooseGame;
    }
    //
    private void setGame(Game game) throws SQLException {//读取数据库时的game表的数据设置
        //游戏
        game.setId(rs.getInt("game.id"));
        game.setGamename(rs.getString("gamename"));
        game.setDownloadCount(rs.getInt("download_count"));
        game.setFire(rs.getBoolean("fire"));
        game.setSort(rs.getInt("sort"));
        game.setSize(rs.getInt("size"));
        game.setGrade(rs.getDouble("grade"));
        game.setPutaway(rs.getString("putaway"));
        game.setLocation(rs.getString("location"));
        game.setEnable(rs.getBoolean("game.enable"));
    }

}
