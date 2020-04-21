package com.wanmait.ider.pojo;

import java.util.List;

public class Ranking {
    private Integer id;

    /**
	* 排行榜名称
	*/
    private String name;

    /**
	* 值，便于数据读取，排行榜根据什么排行
	*/
    private String value;

    private Boolean enable;

    private List<GameType> gameTypeList;

    public List<GameType> getGameTypeList() {
        return gameTypeList;
    }

    public void setGameTypeList(List<GameType> gameTypeList) {
        this.gameTypeList = gameTypeList;
    }

    public Integer getId() {
        return id;
    }



    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Boolean getEnable() {
        return enable;
    }

    public void setEnable(Boolean enable) {
        this.enable = enable;
    }
}