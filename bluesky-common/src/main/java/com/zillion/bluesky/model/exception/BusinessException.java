package com.zillion.bluesky.model.exception;

/**
 * Created by lucoo on 16/9/27.
 */
public class BusinessException extends RuntimeException {
    private String expCode;
    private String expMessage;

    public BusinessException() {

    }

    public BusinessException(String expCode) {
        this.expCode = expCode;
    }

    public BusinessException(String expCode, String expMessage) {
        this.expCode = expCode;
        this.expMessage = expMessage;
    }

    public String getExpCode() {
        return expCode;
    }

    public void setExpCode(String expCode) {
        this.expCode = expCode;
    }

    public String getExpMessage() {
        return expMessage;
    }

    public void setExpMessage(String expMessage) {
        this.expMessage = expMessage;
    }
}
