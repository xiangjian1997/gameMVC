package com.wanmait.ider.pojo;
//分类表
public class Type
{
    private Integer id;         //id
    private String typeName;       //分类名
    private Boolean enable;     //是否删除

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public void setEnable(Boolean enable) {
        this.enable = enable;
    }

    public Integer getId() {
        return id;
    }

    public Boolean getEnable() {
        return enable;
    }
}
