package com.swjtu.houseLease.util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ToolHelper {
    public static String replaceDBName(String sql, String dbname) {
        if(sql!=null && !"".equals(sql)) {
            Pattern pattern = Pattern.compile("dbname"); //去掉空格符合换行符
            Matcher matcher = pattern.matcher(sql);
            String result = matcher.replaceAll(dbname);
            return result;
        }else {
            return dbname;
        }
    }

    public static String readFile(String filePath) throws Exception {
        StringBuffer str = new StringBuffer();
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(
                    new FileInputStream(filePath), "UTF-8"));
            String tempString = null;
            int line = 1;
            // 一次读入一行，直到读入null为文件结束
            while ((tempString = reader.readLine()) != null) {
                // 显示行号
                // System.out.println("line " + line + ": " + tempString);
                str = str.append(" " + tempString);
                line++;
            }
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
            throw e;
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e1) {
                }
            }
        }
        return str.toString();
    }

    public static String autoID(){
        String dateNow = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()).substring(2);
        String rand = "1234567890ABCDEF";
        String result = "";
        Random random = new Random();
        for(int i = 0; i < 20; i++){
            int index = random.nextInt(16);
            result += rand.charAt(index);
        }
        return dateNow + result;
    }
}
