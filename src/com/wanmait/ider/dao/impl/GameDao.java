package com.wanmait.ider.dao.impl;

import com.wanmait.ider.pojo.Game;
import com.wanmait.ider.pojo.GamePicture;
import com.wanmait.ider.pojo.GameType;
import com.wanmait.ider.pojo.Type;
import com.wanmait.ider.util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GameDao
{
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    private DBHelper dbhelper=DBHelper.getDBHelper();
    private GameDao(){}
    public static GameDao getGameDao()
    {
        GameDao gameDao=new GameDao();
        return gameDao;
    }
    //获取game数据时设置game
    private Game game(Game game,ResultSet rs) throws SQLException {
        game.setId(rs.getInt("game.id"));
        game.setGameName(rs.getString("game.game_name"));
        game.setSort(rs.getInt("game.sort"));
        game.setDownloadCount(rs.getInt("game.download_count"));
        game.setFire(rs.getBoolean("game.fire"));
        game.setGrade(rs.getDouble("game.grade"));
        game.setSize(rs.getInt("game.size"));
        game.setLocation(rs.getString("game.location"));
        game.setEnable(rs.getBoolean("game.enable"));
        return game;
    }
    //主页获取热门游戏数据
    public List<Game> getHotGame()
    {
        String sql="SELECT * FROM game WHERE fire=1 ORDER BY sort DESC";
        Connection connection=dbhelper.getConnection();
        ArrayList<Game>games=new ArrayList<>();
        try {
            ps=connection.prepareStatement(sql);
            rs=ps.executeQuery();
            for(int i=0;i<20&rs.next();i++)
            {
                Game game=new Game();
                this.game(game,rs);
                games.add(game);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return games;
    }
    //主页获取最新Game
    public List<Game> getNewGame()
    {
        String sql="SELECT * FROM game ORDER BY putaway DESC";
        Connection connection=dbhelper.getConnection();
        ArrayList<Game>games=new ArrayList<>();
        try {
            ps=connection.prepareStatement(sql);
            rs=ps.executeQuery();
            for(int i=0;i<20&rs.next();i++)
            {
                Game game=new Game();
                this.game(game,rs);
                games.add(game);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return games;
    }
    //游戏主页获取数据
    public List<GameType> getGame()
    {
        String sql="select * from type,game_type,game_picture,game where type.id=game_type.type_id " +
                "  and game_picture.game_id=game.id and game.id=game_type.game_id " +
                " and type.enable=1 and game_type.enable=1 and game.enable=1 and game_picture.enable=1 group by game.id";
        Connection connection=dbhelper.getConnection();
        ArrayList<GameType> gameTypes=new ArrayList<>();
        try {
            ps=connection.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next())
            {
                GameType gameType=new GameType();
                gameTypes.add(this.gameType(gameType,rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return gameTypes;
    }
        //获取一个游戏的所有数据
    private GameType gameType(GameType gameType,ResultSet rs) throws SQLException {
        Game game=new Game();
        game=this.game(game,rs);
        Type type=new Type();
        type.setTypeName(rs.getString("type.type_name"));
        type.setId(rs.getInt("type.id"));
        type.setEnable(rs.getBoolean("type.enable"));
        ArrayList<GamePicture> gamePictures =new ArrayList<>();
        GamePicture gamePicture =new GamePicture();
        gamePicture.setId(rs.getInt("game_picture.id"));
        gamePicture.setGame(game);
        gamePicture.setPictureName(rs.getString("game_picture.picture_name"));
        gamePicture.setEnable(rs.getBoolean("game_picture.enable"));
        gamePictures.add(gamePicture);
        gameType.setGame(game);
        gameType.setGamePictures(gamePictures);
        gameType.setType(type);
        gameType.setId(rs.getInt("game_type.id"));
        gameType.setEnable(rs.getBoolean("game_type.enable"));
        return gameType;
    }

}
