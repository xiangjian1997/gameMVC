package com.wanmait.ider.pojo;

import java.io.Serializable;

public class Manage implements Serializable {
    private Integer id;

    /**
	* 游戏id
	*/
    private Integer gameId;

    /**
	* 主页排行榜的游戏个数
	*/
    private Integer rankAmount;

    /**
	* 主页游戏推荐的游戏个数
	*/
    private Integer gameAmount;

    /**
	* 主页字母排序的游戏个数
	*/
    private Integer letter;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGameId() {
        return gameId;
    }

    public void setGameId(Integer gameId) {
        this.gameId = gameId;
    }

    public Integer getRankAmount() {
        return rankAmount;
    }

    public void setRankAmount(Integer rankAmount) {
        this.rankAmount = rankAmount;
    }

    public Integer getGameAmount() {
        return gameAmount;
    }

    public void setGameAmount(Integer gameAmount) {
        this.gameAmount = gameAmount;
    }

    public Integer getLetter() {
        return letter;
    }

    public void setLetter(Integer letter) {
        this.letter = letter;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", gameId=").append(gameId);
        sb.append(", rankAmount=").append(rankAmount);
        sb.append(", gameAmount=").append(gameAmount);
        sb.append(", letter=").append(letter);
        sb.append("]");
        return sb.toString();
    }
}