package com.wanmait.ider.dao.impl;

import com.wanmait.ider.pojo.*;
import com.wanmait.ider.util.DBHelper;
import org.apache.ibatis.session.SqlSession;

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
    //sql需要考虑游戏没有图片的情况
    private String sql="select * from type,game_type,game_picture,game,(Select game_name, " +
            "    ELT(INTERVAL(CONV(HEX(left(CONVERT(`game_name` USING gbk),1)),16,10), " +
            "        0xB0A1,0xB0C5,0xB2C1,0xB4EE,0xB6EA,0xB7A2,0xB8C1,0xB9FE,0xBBF7, " +
            "        0xBFA6,0xC0AC,0xC2E8,0xC4C3,0xC5B6,0xC5BE,0xC6DA,0xC8BB,0xC8F6, " +
            "        0xCBFA,0xCDDA,0xCEF4,0xD1B9,0xD4D1), " +
            "        'A','B','C','D','E','F','G','H','J','K','L','M','N','O','P', " +
            "        'Q','R','S','T','W','X','Y','Z') as PY " +
            "    FROM game )as t where type.id=game_type.type_id " +
            "and game_picture.game_id=game.id and game.id=game_type.game_id " +
            "and type.enable=1 and game_type.enable=1 and game.enable=1 and game_picture.enable=1 and t.game_name=game.game_name ";      //查询分类，游戏及其图片的sql语句并且都没有进行删除的数据
    public static GameTypeDao getGameTypeDao()
    {
        GameTypeDao gameTypeDao=new GameTypeDao();
        return gameTypeDao;
    }
    //得到热门游戏的id
    public List<Game> getHotGameId()
    {
        List<Game> games=new ArrayList<>();
        String sql="select * from game where fire=1 and enable=1";
        Connection connection=dbhelper.getConnection();
        try {
            ps=connection.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next())
            {
                Game game=new Game();
                this.setGame(game);
                games.add(game);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            dbhelper.close(connection,ps,rs);
        }
        return games;
    }

    public List<GameType> getHotGame()
    {
        List<Game> games=this.getHotGameId();

        Connection connection=dbhelper.getConnection();
        List<GameType>gameTypes=new ArrayList<>();
        String s=" and game.fire=1 ORDER BY sort DESC";
        for(Game game:this.getHotGameId())
        {
            gameTypes.add(this.getGame(game.getId(),s));
        }
        return gameTypes;
    }



    //排行榜
//取出排行榜相关数据
private ArrayList<Ranking> ranking()
{
    String sql="SELECT * FROM ranking WHERE ENABLE=1";
    ArrayList<Ranking> rankingArrayList = new ArrayList<>();
    Ranking ranking;
    Connection connection=dbhelper.getConnection();
    try {
        ps=connection.prepareStatement(sql);
        rs=ps.executeQuery();
        for(int i=0;i<3&rs.next();i++)
        {
            ranking=new Ranking();
            ranking.setId(rs.getInt("id"));
            ranking.setName(rs.getString("name"));
            ranking.setValue(rs.getString("value"));
            ranking.setGameTypes(null);
            rankingArrayList.add(ranking);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    finally {
        dbhelper.close(connection,ps,rs);
    }
    return rankingArrayList;
}
    //获取排行榜数据的格式
    private List<GameType> get(ResultSet rs) throws SQLException {//首页游戏数据-->排行榜等数据取出
        ArrayList<GameType> gameTypes=new ArrayList<>();
    GameType gameType=null;
        for (int i=0;i<20&rs.next();i++)
        {
                gameType=new GameType();
                Game game=new Game();
                GamePicture gamePicture =new GamePicture();
                Type type=new Type();
                gameType.setEnable(rs.getBoolean("game_type.enable"));
                //游戏
                this.setGame(game);
                //游戏图片
                gamePicture.setId(rs.getInt("game_picture.id"));
                gamePicture.setPictureName(rs.getString("picture_name"));
                gamePicture.setGame(game);
                gamePicture.setEnable(rs.getBoolean("game_picture.enable"));
                ArrayList<GamePicture>pics=new ArrayList<>();
                pics.add(gamePicture);
                //分类
                type.setId(rs.getInt("type.id"));
                type.setTypeName(rs.getString("type_name"));
                type.setEnable(rs.getBoolean("type.enable"));
                gameType.setGame(game);
                gameType.setType(type);
                gameType.setGamePictures(pics);
                gameTypes.add(gameType);
        }
    return gameTypes;
}

        //取出
    private Ranking getListRanking(String sql,Ranking ranking)
    {
        Connection connection=dbhelper.getConnection();
        List<GameType> gameTypeList;
        try {
            ps=connection.prepareStatement(sql);
            rs=ps.executeQuery();
            gameTypeList=this.get(rs);
            ranking.setGameTypes(gameTypeList);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            dbhelper.close(connection,ps,rs);
        }
        return ranking;
    }

    public List<Ranking> getRankings()   //最后的排行榜数据
    {
        ArrayList<Ranking> rankings=new ArrayList<>();
        ArrayList<Ranking> rankingArrayList=this.ranking();
        for (Ranking ranking:rankingArrayList) {
            String Sql=sql+" group by game.id";
            if(ranking.getValue().length()>0)
            {
                Sql=Sql+" order by "+ranking.getValue()+" desc";
            }
        Ranking ranking1=this.getListRanking(Sql,ranking);
        rankings.add(ranking1);
        }
        return rankings;
    }
    //主页数据结束
    public GameType getGame(Integer id,String a) {//游戏数据
        GameType gameType=null;
        String SQL=sql+" and game.id=? "+a;
        Connection connection=dbhelper.getConnection();
        try {
            ps= connection.prepareStatement(SQL);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            int i=0;
            gameType=new GameType();
            Game game=new Game();
            GamePicture gamePicture =null;
            Type type=new Type();
            ArrayList<GamePicture> gamePictures =new ArrayList<>();
            while (rs.next()){
                if(i==0)
                {
                    gameType.setEnable(rs.getBoolean("game_type.enable"));
                    //游戏
                    this.setGame(game);
                    //分类
                    type.setId(rs.getInt("type.id"));
                    type.setTypeName(rs.getString("type_name"));
                    type.setEnable(rs.getBoolean("type.enable"));
                }
                //游戏图片
                gamePicture =new GamePicture();
                gamePicture.setId(rs.getInt("game_picture.id"));
                gamePicture.setPictureName(rs.getString("picture_name"));
                gamePicture.setGame(game);
                gamePicture.setEnable(rs.getBoolean("game_picture.enable"));
                gamePictures.add(gamePicture);
            }
            gameType.setGame(game);
            gameType.setType(type);
            gameType.setGamePictures(gamePictures);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally{
            dbhelper.close(connection,ps,rs);
        }
        return gameType;
    }
    //游戏的分类
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
                type.setTypeName(rs.getString("type_name"));
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
                type.setTypeName(rs.getString("type_name"));
                type.setEnable(rs.getBoolean("type.enable"));
                //游戏图片
                ArrayList<GamePicture> gamePictures =new ArrayList<>();
                GamePicture gamePicture =new GamePicture();
                gamePicture.setId(rs.getInt("game_picture.id"));
                gamePicture.setPictureName(rs.getString("picture_name"));
                gamePicture.setGame(game);
                gamePicture.setEnable(rs.getBoolean("game_picture.enable"));
                gamePictures.add(gamePicture);
                //
                gameType.setGame(game);
                gameType.setType(type);
                gameType.setGamePictures(gamePictures);
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
        game.setGameName(rs.getString("game.game_name"));
        game.setDownloadCount(rs.getInt("game.download_count"));
        game.setFire(rs.getBoolean("game.fire"));
        game.setSort(rs.getInt("game.sort"));
        game.setSize(rs.getInt("game.size"));
        game.setGrade(rs.getDouble("game.grade"));
        game.setPutaway(rs.getDate("game.putaway"));
        game.setLocation(rs.getString("game.location"));
        game.setEnable(rs.getBoolean("game.enable"));
        game.setGamePicture(rs.getString("game.game_picture"));
    }


}
