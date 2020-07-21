package com.wanmait.ider.pojo;

import java.io.Serializable;

public class Admin implements Serializable {
    private Integer id;

    /**
	* 账号
	*/
    private String name;

    /**
	* 密码
	*/
    private String password;

    /**
	* 手机
	*/
    private String phone;

    /**
	* 邮箱
	*/
    private String email;

    /**
	* 管理员等级去掉
	*/
    private Boolean rank;

    /**
	* 头像
	*/
    private String headPic;

    /**
	* 1是存在
	*/
    private Boolean enable;

    private static final long serialVersionUID = 1L;

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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Boolean getRank() {
        return rank;
    }

    public void setRank(Boolean rank) {
        this.rank = rank;
    }

    public String getHeadPic() {
        return headPic;
    }

    public void setHeadpic(String headPic) {
        this.headPic = headPic;
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
        sb.append(", name=").append(name);
        sb.append(", password=").append(password);
        sb.append(", phone=").append(phone);
        sb.append(", email=").append(email);
        sb.append(", rank=").append(rank);
        sb.append(", headpic=").append(headPic);
        sb.append(", enable=").append(enable);
        sb.append("]");
        return sb.toString();
    }
}