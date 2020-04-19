package com.wanmait.ider.pojo;
//分类表
public class Type
{
    private Integer id;         //id
    private String cname;       //分类名
    private Boolean enable;     //是否删除

    public void setId(Integer id) {
        this.id = id;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public void setEnable(Boolean enable) {
        this.enable = enable;
    }

    public Integer getId() {
        return id;
    }

    public String getCname() {
        return cname;
    }

    public Boolean getEnable() {
        return enable;
    }
}
