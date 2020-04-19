package com.wanmait.ider.pojo;

public class Site {
    private Integer id;         //id
    private String name;        //地点名称，国，省，市
    private Integer farther;    //父级id

    private Boolean enable;     //是否存在

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

    public Integer getFarther() {
        return farther;
    }

    public void setFarther(Integer farther) {
        this.farther = farther;
    }

    public Boolean getEnable() {
        return enable;
    }

    public void setEnable(Boolean enable) {
        this.enable = enable;
    }
}
