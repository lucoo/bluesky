package com.zillion.bluesky.model.common;

/**
 * Created by lucoo on 16/9/27.
 */
public abstract class AbstractResponseEntity {
    protected String code;
    protected String message;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
