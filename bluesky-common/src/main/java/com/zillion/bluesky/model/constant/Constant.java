package com.zillion.bluesky.model.constant;

/**
 * Created by lucoo on 16/9/27.
 */
public enum Constant {
    SKY(1, "bluesky"),
    SEA(2, "bluesea");

    private int code;
    private Object value;

    private Constant(int code, Object value) {
        this.code = code;
        this.value = value;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public Object getValue() {
        return value;
    }

    public void setValue(Object value) {
        this.value = value;
    }
}
