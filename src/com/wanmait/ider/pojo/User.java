package com.wanmait.ider.pojo;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
    /**
	* id
	*/
    private Integer id;

    /**
	* 用户名
	*/
    private String name;

    /**
	* 密码
	*/
    private String password;

    /**
	* 邮箱
	*/
    private String email;

    /**
	* 手机号
	*/
    private String phone;

    /**
	* 昵称
	*/
    private String nickname;

    /**
	* 性别0保密1男2女
	*/
    private String sex;

    /**
	* 注册时间
	*/
    private Date registrationTime;

    /**
	* 出生日期
	*/
    private Date born;

    /**
	* 头像
	*/
    private String headPicture;

    /**
	* 是否删除，1是没删除
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getRegistrationTime() {
        return registrationTime;
    }

    public void setRegistrationTime(Date registrationTime) {
        this.registrationTime = registrationTime;
    }

    public Date getBorn() {
        return born;
    }

    public void setBorn(Date born) {
        this.born = born;
    }

    public String getHeadPicture() {
        return headPicture;
    }

    public void setHeadPicture(String headPicture) {
        this.headPicture = headPicture;
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
        sb.append(", email=").append(email);
        sb.append(", phone=").append(phone);
        sb.append(", nickname=").append(nickname);
        sb.append(", sex=").append(sex);
        sb.append(", registrationTime=").append(registrationTime);
        sb.append(", born=").append(born);
        sb.append(", headPicture=").append(headPicture);
        sb.append(", enable=").append(enable);
        sb.append("]");
        return sb.toString();
    }
}