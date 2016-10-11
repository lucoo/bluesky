package com.zillion.bluesky.console.interceptor;

import com.zillion.bluesky.model.common.ResponseEntity;
import com.zillion.bluesky.model.exception.BusinessException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by lucoo on 16/9/27.
 */
@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(value = Exception.class)
    @ResponseBody
    public ResponseEntity<Void> handlerException(Exception ex) {
        ResponseEntity<Void> responseEntity = new ResponseEntity<>();
        if (ex instanceof BusinessException) {
            responseEntity.setCode(((BusinessException) ex).getExpCode());
            responseEntity.setMessage(((BusinessException) ex).getExpMessage());
        }
        return responseEntity;
    }
}
