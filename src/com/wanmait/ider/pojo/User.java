package com.wanmait.ider.pojo;
//用户表


import java.sql.Timestamp;

public class User
{
    private Integer id;                     //用户id
    private String name;                    //用户名
    private String password;                //用户密码
    private String email;                   //用户邮箱
    private String phone;                   //用户手机
    private String nickname;                //用户昵称
    private String sex;                     //性别
    private Timestamp registrationTime;    //用户注册时间
    private String born;                      //出生年月日??????
    private String headpic;                 //用户头像
    private Boolean enable;                 //是否删除
    public String  getBorn() {
        return born;
    }

    public void setBorn(String born) {
        this.born = born;
    }
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

    public Timestamp getRegistrationTime() {
        return registrationTime;
    }

    public void setRegistrationTime(Timestamp registrationTime) {
        this.registrationTime = registrationTime;
    }

    public String getHeadpic() {
        return headpic;
    }

    public void setHeadpic(String headpic) {
        this.headpic = headpic;
    }

    public Boolean getEnable() {
        return enable;
    }

    public void setEnable(Boolean enable) {
        this.enable = enable;
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
}
