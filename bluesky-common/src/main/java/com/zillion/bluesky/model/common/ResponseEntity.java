package com.zillion.bluesky.model.common;

/**
 * Created by lucoo on 16/9/27.
 */
public class ResponseEntity<T> extends AbstractResponseEntity {
    T data;

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
