package com.david.dto;

/**
 * Created by ZhengDaPeng on 2015/10/9.
 */
public class Result<T> {
    private String returnCode;
    private boolean success;
    private T getResult;

    public String getReturnCode() {
        return returnCode;
    }

    public void setReturnCode(String returnCode) {
        this.returnCode = returnCode;
    }

    public T getGetResult() {
        return getResult;
    }

    public void setGetResult(T getResult) {
        this.getResult = getResult;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }
}
