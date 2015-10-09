package com.david.exception;

/**
 * Created by ZhengDaPeng on 2015/10/9.
 */
public class DAOException extends BasicException {
    public DAOException(String message) {
        super(message);
    }

    public DAOException(String message, String errorCode) {
        super(message, errorCode);
    }

    public DAOException(String message, String errorCode, Throwable cause) {
        super(message, errorCode, cause);
    }

}
