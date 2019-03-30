package com.bysj.fy.utils;

import com.bysj.fy.Constants;
import com.bysj.fy.api.TransApi;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.util.List;
import java.util.Map;

public class util {

    public static String Trans(String from,String to,String content){
        TransApi api = new TransApi(Constants.BAIDU_INFO.APP_ID, Constants.BAIDU_INFO.SECURITY_KEY);
        JSONObject jsonObject = JSONObject.fromObject(api.getTransResult(content, from, to));
        String trans_result = jsonObject.getString("trans_result");
        JSONArray jsonArray = JSONArray.fromObject(trans_result);
        List<Map> map = (List<Map>) JSONArray.toCollection(jsonArray, Map.class);
        String dst = ((JSONObject)jsonArray.get(0)).getString("dst");
        return  dst;
    }

    public static void main(String[] args) {

        String st = "I love you !";

        System.out.println(Trans("en","zh",st));
    }
}
