package com.wanmait.ider.pojo;

import java.io.Serializable;

public class GameEssay implements Serializable {
    /**
	* id
	*/
    private Integer id;

    /**
	* 文章内容
	*/
    private String essay;

    /**
	* 判断是游戏文章，攻略，还是评测
	*/
    private Integer essayType;

    /**
	* 假删除
	*/
    private Boolean enable;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEssay() {
        return essay;
    }

    public void setEssay(String essay) {
        this.essay = essay;
    }

    public Integer getEssayType() {
        return essayType;
    }

    public void setEssayType(Integer essayType) {
        this.essayType = essayType;
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
        sb.append(", essay=").append(essay);
        sb.append(", essayType=").append(essayType);
        sb.append(", enable=").append(enable);
        sb.append("]");
        return sb.toString();
    }
}