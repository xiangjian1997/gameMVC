package com.wanmait.ider.util;

public class CookieUtil {
    private static CookieUtil cookieUtil;

    private CookieUtil(){}

    public static CookieUtil getCookieUtil(){
        cookieUtil=new CookieUtil();
        return cookieUtil;
    }
    public void setCookieUtil(){

    }

}
