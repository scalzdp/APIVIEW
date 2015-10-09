package com.david.exception;

import java.io.Serializable;

public class BasicException extends RuntimeException implements Serializable {
	private String message;
	private String errorCode;
	
	
	@Override
	public String getMessage() {
		return "message: "+message+" code :"+errorCode;
	}

	public void setMessage(String message) {
		this.message = message;
	}
    
	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}

    public BasicException(String message) {
        super(message);
        setMessage(message);
    }

    public BasicException(String message,String errorCode) {
		super(message);
		setMessage(message);
		setErrorCode(errorCode);
	}

    public BasicException(String message,String errorCode, Throwable cause) {
        super(message, cause);
        setMessage(message);
        setErrorCode(errorCode);
    }
}
