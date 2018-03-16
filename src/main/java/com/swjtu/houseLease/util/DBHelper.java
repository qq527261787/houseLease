package com.swjtu.houseLease.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBHelper {
    private static final String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String url = "jdbc:sqlserver://127.0.0.1:1433;database=";
    private static final String username = "sa";
    private static final String password = "Root123";
    private static final String newSql = "D:/Workspaces/IntelliJ/houseLease/newsql.Sql";
    private static final String mainDBName = "Main";

    static{
        try{
            Class.forName(driver);
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }

    public static Connection getConnection(){
        try{
            Connection conn = DriverManager.getConnection(url + mainDBName, username, password);
            return conn;
        } catch (SQLException ex){
            ex.printStackTrace();
        }
        return null;
    }

    public static Connection getConnection(String dbname){
        try{
            Connection conn = DriverManager.getConnection(url + dbname, username, password);
            return conn;
        } catch (SQLException ex){
            ex.printStackTrace();
        }
        return null;
    }

    public static boolean createNewDB(String dbname){
        Connection conn = getConnection(mainDBName);
        Statement stmt = null;
        if (conn == null){
            return false;
        }
        try{
            stmt = conn.createStatement();
            //读取并执行sql脚本
            String sql = ToolHelper.readFile(newSql);
            sql = ToolHelper.replaceDBName(sql, dbname);
            String[] arrSql = sql.split("GO");
            for(int i = 0; i < arrSql.length; i++){
                stmt.execute(arrSql[i]);
            }
            return true;
        } catch (Exception ex){
            ex.printStackTrace();
            return false;
        } finally {
            if(stmt != null){
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
                stmt = null;
            }
        }
    }
}
