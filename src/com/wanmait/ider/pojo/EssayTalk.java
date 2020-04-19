package com.wanmait.ider.pojo;
//文章评论
public class EssayTalk
{
    private Integer id;                 //id
    private EssayTalk essayTalk;        //攻略
    private User user;                  //用户
    private String comment;             //评论
    private Integer commentPraise;      //赞的数量
    private Integer commentTread;       //踩的数量
    private Boolean enable;             //是否删除
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public EssayTalk getEssayTalk() {
        return essayTalk;
    }

    public void setEssayTalk(EssayTalk essayTalk) {
        this.essayTalk = essayTalk;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Integer getCommentPraise() {
        return commentPraise;
    }

    public void setCommentPraise(Integer commentPraise) {
        this.commentPraise = commentPraise;
    }

    public Integer getCommentTread() {
        return commentTread;
    }

    public void setCommentTread(Integer commentTread) {
        this.commentTread = commentTread;
    }

    public Boolean getEnable() {
        return enable;
    }

    public void setEnable(Boolean enable) {
        this.enable = enable;
    }

    @Override
    public String toString() {
        return "EssayTalk{" +
                "id=" + id +
                ", essayTalk=" + essayTalk +
                ", user=" + user +
                ", comment='" + comment + '\'' +
                ", commentPraise=" + commentPraise +
                ", commentTread=" + commentTread +
                ", enable=" + enable +
                '}';
    }
}
