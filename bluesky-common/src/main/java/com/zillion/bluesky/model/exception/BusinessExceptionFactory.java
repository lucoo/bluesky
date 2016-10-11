package com.zillion.bluesky.model.exception;

/**
 * Created by lucoo on 16/9/27.
 */
public class BusinessExceptionFactory {
    public BusinessException createBusinessException(String expCode, String expMessage) {
        BusinessException businessException = new BusinessException(expCode, expMessage);
        return businessException;
    }
}
