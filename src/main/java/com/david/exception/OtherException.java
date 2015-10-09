package com.david.exception;

public class OtherException extends BasicException {
    public OtherException(String message, String errorCode) {
        super(message, errorCode);
    }

    public OtherException(String message, String errorCode, Throwable cause) {
        super(message, errorCode, cause);
    }
}