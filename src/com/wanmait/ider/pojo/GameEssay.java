package com.wanmait.ider.pojo;
//游戏文章、攻略、评测等
public class GameEssay
{
    private Integer id;             //id
    private String essay;           //评论
    private Integer essayType;      //判断是游戏文章，攻略，还是评测
    private Boolean enable;         //是否删除

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


}
