package com.wanmait.ider.pojo;

import java.io.Serializable;

public class GamePicture implements Serializable {
    private Integer id;

    private Game game;

    /**
	* 图片名
	*/
    private String pictureName;

    /**
	* 是否删除，1是没删除
	*/
    private Boolean enable;

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

    public String getPictureName() {
        return pictureName;
    }

    public void setPictureName(String pictureName) {
        this.pictureName = pictureName;
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
        sb.append(", pictureName=").append(pictureName);
        sb.append(", enable=").append(enable);
        sb.append("]");
        return sb.toString();
    }
}