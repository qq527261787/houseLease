package com.swjtu.houseLease.service;

import com.swjtu.houseLease.dao.CompanyDao;
import com.swjtu.houseLease.model.Company;
import com.swjtu.houseLease.util.ToolHelper;
import com.swjtu.houseLease.web.exception.base.CustomException;
import com.swjtu.houseLease.web.exception.base.PasswdIncorException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class CompanyService {
    @Autowired
    private CompanyDao companyDao;

    /**
     * 公司登录
     * @param company
     * @return 返回公司管理账号
     * @throws Exception
     */
    public Company login(Company company)  throws Exception{
        Company obj = companyDao.getByNo(company.getCompanyNo());
        //账号不存在
        if(obj == null){
            throw new CustomException("账号不存在");
        }
        //密码不正确
        if(!obj.getPassword().equals(company.getPassword())){
            throw new CustomException("密码错误");
        }
        return obj;
    }

    /**
     * 公司注册
     * @param company
     * @throws Exception
     */
    public void register(Company company) throws Exception{
        Company obj = companyDao.getByNo(company.getCompanyNo());
        //账号存在
        if(obj != null){
            throw new CustomException("账号已经存在");
        }

        obj = companyDao.getByDbname(company.getDbName());
        //该数据库名已存在
        if(obj != null){
            throw new CustomException("数据库名称已被占用");
        }

        Date date = new Date();
        company.setCompanyId(ToolHelper.autoID());
        company.setFlagDeleted(false);
        company.setFlagTrashed(false);
        company.setFlagGrant(false);
        company.setRegDate(date);
        company.setExpireDate(new Date(date.getYear() + 5, date.getMonth(), date.getDay(), date.getHours(), date.getMinutes(), date.getSeconds()));
        companyDao.add(company);
    }
}
