package com.wanmait.ider.pojo;

import java.util.ArrayList;

//游戏和游戏分类关联表
public class GameType
{
    private Integer id;         //id
    private Game game;          //游戏id
    private Type type;          //分类id
    private ArrayList<GamePic>gamePics;  //游戏图片动态数组
    private Boolean enable;     //是否删除

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Game getGame() {
        return game;
    }

    public void setGame(Game game) {
        this.game = game;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public Boolean getEnable() {
        return enable;
    }

    public void setEnable(Boolean enable) {
        this.enable = enable;
    }

    public ArrayList<GamePic> getGamePics() {
        return gamePics;
    }

    public void setGamePics(ArrayList<GamePic> gamePics) {
        this.gamePics = gamePics;
    }
}
