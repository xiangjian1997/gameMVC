package com.wanmait.ider.pojo;

import java.io.Serializable;
import java.util.Date;

public class Game implements Serializable {
    private Integer id;

    private String gameName;

    /**
	* 下载次数
	*/
    private Integer downloadCount;

    /**
	* 评分
	*/
    private Double grade;

    /**
	* 是否热门
	*/
    private Boolean fire;

    /**
	* 热门排序
	*/
    private Integer sort;

    /**
	* 游戏大小
	*/
    private Integer size;

    /**
	* 文件所在位置
	*/
    private String location;

    /**
	* 游戏封面图片名
	*/
    private String gamePicture;

    /**
	* 是否删除，1是没删除
	*/
    private Boolean enable;

    /**
	* 上架时间
	*/
    private Date putaway;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGameName() {
        return gameName;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public Integer getDownloadCount() {
        return downloadCount;
    }

    public void setDownloadCount(Integer downloadCount) {
        this.downloadCount = downloadCount;
    }

    public Double getGrade() {
        return grade;
    }

    public void setGrade(Double grade) {
        this.grade = grade;
    }

    public Boolean getFire() {
        return fire;
    }

    public void setFire(Boolean fire) {
        this.fire = fire;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getGamePicture() {
        return gamePicture;
    }

    public void setGamePicture(String gamePicture) {
        this.gamePicture = gamePicture;
    }

    public Boolean getEnable() {
        return enable;
    }

    public void setEnable(Boolean enable) {
        this.enable = enable;
    }

    public Date getPutaway() {
        return putaway;
    }

    public void setPutaway(Date putaway) {
        this.putaway = putaway;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", gameName=").append(gameName);
        sb.append(", downloadCount=").append(downloadCount);
        sb.append(", grade=").append(grade);
        sb.append(", fire=").append(fire);
        sb.append(", sort=").append(sort);
        sb.append(", size=").append(size);
        sb.append(", location=").append(location);
        sb.append(", gamePicture=").append(gamePicture);
        sb.append(", enable=").append(enable);
        sb.append(", putaway=").append(putaway);
        sb.append("]");
        return sb.toString();
    }
}