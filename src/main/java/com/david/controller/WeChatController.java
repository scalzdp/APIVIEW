package com.david.controller;

import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.http.HttpStatus;

import java.io.IOException;

/**
 * Created by ZhengDaPeng on 2015/10/8.
 */
public class WeChatController {

    /**
     * 访问用户管理 获取关注列表
     * @param pagesize 单页数量(测试可以设置为9999，一次取全部用户)
     * @param pageidx 当前页数(0开始)
     * @return
     * @throws HttpException
     * @throws IOException
     */
//    public static List<FansJson> getfans(int pagesize, int pageidx) throws HttpException, IOException {
//        GetMethod get = new GetMethod("http://mp.weixin.qq.com/cgi-bin/contactmanage?t=user/index&pagesize=" + pagesize + "&pageidx=" + pageidx + "&type=0&groupid=0&token=" + TOKEN + "&lang=zh_CN");
//        get.setRequestHeader(USER_AGENT_H, USER_AGENT);
//        get.setRequestHeader(REFERER_H, INDEX_URL);
//        get.setRequestHeader("Cookie", cookiestr);
//        int status = client.executeMethod(get);
//        if (status == HttpStatus.SC_OK) {
//            String sr = get.getResponseBodyAsString();
//            return parseFansCount(sr);
//
//        }
//        return null;
//    }
}
