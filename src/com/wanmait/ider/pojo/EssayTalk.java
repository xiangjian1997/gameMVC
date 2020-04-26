package com.wanmait.ider.pojo;

import java.io.Serializable;

public class EssayTalk implements Serializable {
    private Integer id;

    /**
	* 文章攻略的id
	*/
    private Integer essayId;

    /**
	* 用户的id
	*/
    private Integer userId;

    /**
	* 评论
	*/
    private String comment;

    /**
	* 赞的数量
	*/
    private Integer commentPraise;

    /**
	* 踩的数量
	*/
    private Integer commentTread;

    private Boolean enable;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getEssayId() {
        return essayId;
    }

    public void setEssayId(Integer essayId) {
        this.essayId = essayId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
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
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", essayId=").append(essayId);
        sb.append(", userId=").append(userId);
        sb.append(", comment=").append(comment);
        sb.append(", commentPraise=").append(commentPraise);
        sb.append(", commentTread=").append(commentTread);
        sb.append(", enable=").append(enable);
        sb.append("]");
        return sb.toString();
    }
}