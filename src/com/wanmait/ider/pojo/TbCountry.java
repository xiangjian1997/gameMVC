package com.wanmait.ider.pojo;

import java.io.Serializable;

public class TbCountry implements Serializable {
    private Integer countryid;

    private String countryname;

    private static final long serialVersionUID = 1L;

    public Integer getCountryid() {
        return countryid;
    }

    public void setCountryid(Integer countryid) {
        this.countryid = countryid;
    }

    public String getCountryname() {
        return countryname;
    }

    public void setCountryname(String countryname) {
        this.countryname = countryname;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", countryid=").append(countryid);
        sb.append(", countryname=").append(countryname);
        sb.append("]");
        return sb.toString();
    }
}