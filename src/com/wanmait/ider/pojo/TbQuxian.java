package com.wanmait.ider.pojo;

import java.io.Serializable;

public class TbQuxian implements Serializable {
    private Integer quxianid;

    private String quxianname;

    private Integer cityid;

    private static final long serialVersionUID = 1L;

    public Integer getQuxianid() {
        return quxianid;
    }

    public void setQuxianid(Integer quxianid) {
        this.quxianid = quxianid;
    }

    public String getQuxianname() {
        return quxianname;
    }

    public void setQuxianname(String quxianname) {
        this.quxianname = quxianname;
    }

    public Integer getCityid() {
        return cityid;
    }

    public void setCityid(Integer cityid) {
        this.cityid = cityid;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", quxianid=").append(quxianid);
        sb.append(", quxianname=").append(quxianname);
        sb.append(", cityid=").append(cityid);
        sb.append("]");
        return sb.toString();
    }
}