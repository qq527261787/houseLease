package com.swjtu.houseLease.web.exception.base;


public class ServletRequestBindingException extends CustomException {
    public ServletRequestBindingException(){

    }
    public ServletRequestBindingException(String message){
        super(message);
    }
}
