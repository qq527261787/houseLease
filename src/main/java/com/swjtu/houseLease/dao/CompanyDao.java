package com.swjtu.houseLease.dao;

import com.swjtu.houseLease.model.Company;
import com.swjtu.houseLease.util.DBHelper;
import org.springframework.stereotype.Repository;

import java.sql.*;

@Repository
public class CompanyDao {
    public Company getByNo(String companyNo){
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Company obj = null;
        try{
            conn = DBHelper.getConnection();
            String sql = "select * from company where companyno=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, companyNo);
            rs = stmt.executeQuery();
            while(rs.next()){
                obj = new Company();
                obj.setCompanyId(rs.getString("companyid"));
                obj.setCompanyName(rs.getString("companyname"));
                obj.setCompanyNo(rs.getString("companyno"));
                obj.setFlagTrashed(rs.getBoolean("flagtrashed"));
                obj.setFlagDeleted(rs.getBoolean("flagdeleted"));
                obj.setRegDate(rs.getDate("regdate"));
                obj.setDbName(rs.getString("dbname"));
                obj.setRemark(rs.getString("remark"));
                obj.setEmail(rs.getString("email"));
                obj.setPassword(rs.getString("password"));
                obj.setTel(rs.getString("tel"));
                obj.setQq(rs.getString("qq"));
                obj.setExpireDate(rs.getDate("expiredate"));
                obj.setAddress(rs.getString("address"));
                obj.setStoreCount(rs.getString("storecount"));
                obj.setFlagGrant(rs.getBoolean("flaggrant"));
                obj.setCityName(rs.getString("cityname"));
                obj.setRtCount(rs.getString("rtcount"));
                obj.setDomain(rs.getString("domain"));
            }
            return obj;
        }catch(Exception ex){
            ex.printStackTrace();
            return null;
        }finally{
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

    public Company getByDbname(String dbName){
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Company obj = null;
        try{
            conn = DBHelper.getConnection();
            String sql = "select * from company where dbname=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, dbName);
            rs = stmt.executeQuery();
            while(rs.next()){
                obj = new Company();
                obj.setCompanyId(rs.getString("companyid"));
                obj.setCompanyName(rs.getString("companyname"));
                obj.setCompanyNo(rs.getString("companyno"));
                obj.setFlagTrashed(rs.getBoolean("flagtrashed"));
                obj.setFlagDeleted(rs.getBoolean("flagdeleted"));
                obj.setRegDate(rs.getDate("regdate"));
                obj.setDbName(rs.getString("dbname"));
                obj.setRemark(rs.getString("remark"));
                obj.setEmail(rs.getString("email"));
                obj.setPassword(rs.getString("password"));
                obj.setTel(rs.getString("tel"));
                obj.setQq(rs.getString("qq"));
                obj.setExpireDate(rs.getDate("expiredate"));
                obj.setAddress(rs.getString("address"));
                obj.setStoreCount(rs.getString("storecount"));
                obj.setFlagGrant(rs.getBoolean("flaggrant"));
                obj.setCityName(rs.getString("cityname"));
                obj.setRtCount(rs.getString("rtcount"));
                obj.setDomain(rs.getString("domain"));
            }
            return obj;
        }catch(Exception ex){
            ex.printStackTrace();
            return null;
        }finally{
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

    public boolean add(Company obj){
        Connection conn = null;
        PreparedStatement stmt = null;
        int result = -1;
        try{
            conn = DBHelper.getConnection();
            String sql = "insert into company(companyid, companyname, companyno, flagtrashed, flagdeleted, regdate, dbname, remark, email, password, tel, qq, expiredate, address, storecount, flaggrant, cityname, rtcount, domain)" +
                    " values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, obj.getCompanyId());
            stmt.setString(2, obj.getCompanyName());
            stmt.setString(3, obj.getCompanyNo());
            stmt.setBoolean(4, obj.getFlagTrashed());
            stmt.setBoolean(5, obj.getFlagDeleted());
            stmt.setDate(6, new Date(obj.getRegDate().getTime()));
            stmt.setString(7, obj.getDbName());
            stmt.setString(8, obj.getRemark());
            stmt.setString(9, obj.getEmail());
            stmt.setString(10, obj.getPassword());
            stmt.setString(11, obj.getTel());
            stmt.setString(12, obj.getQq());
            stmt.setDate(13, new Date(obj.getExpireDate().getTime()));
            stmt.setString(14, obj.getAddress());
            stmt.setString(15, obj.getStoreCount());
            stmt.setBoolean(16, obj.getFlagGrant());
            stmt.setString(17, obj.getCityName());
            stmt.setString(18, obj.getRtCount());
            stmt.setString(19, obj.getDomain());
            result = stmt.executeUpdate();
            if(result == 1){
                return true;
            }else{
                return false;
            }
        }catch(Exception ex){
            ex.printStackTrace();
            return false;
        }finally{
            if(stmt != null){
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                stmt = null;
            }
        }
    }
}
