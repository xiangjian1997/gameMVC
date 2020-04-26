package com.wanmait.ider.pojo;

import java.io.Serializable;
import java.util.List;

public class GameType implements Serializable {
    private Integer id;

    /**
	* 游戏id
	*/
    private Game game;

    /**
	* 分类id
	*/
    private Type type;

    /**
	* 是否删除，1是没删除
	*/
    private Boolean enable;
    /*图片的动态数组*/
    private List<GamePicture> gamePictures;

    public List<GamePicture> getGamePictures() {
        return gamePictures;
    }

    public void setGamePictures(List<GamePicture> gamePictures) {
        this.gamePictures = gamePictures;
    }

    private static final long serialVersionUID = 1L;

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

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Boolean getEnable() {
        return enable;
    }

    public void setEnable(Boolean enable) {
        this.enable = enable;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", gameId=").append(game.getId());
        sb.append(", typeId=").append(type.getId());
        sb.append(", enable=").append(enable);
        sb.append("]");
        return sb.toString();
    }
}