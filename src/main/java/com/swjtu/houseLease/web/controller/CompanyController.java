package com.swjtu.houseLease.web.controller;

import com.google.gson.Gson;
import com.swjtu.houseLease.model.Company;
import com.swjtu.houseLease.service.CompanyService;
import com.swjtu.houseLease.util.JsonResult;
import com.swjtu.houseLease.util.enums.StatusCode;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("/company")
@ResponseBody
public class CompanyController {
    @Resource
    CompanyService companyService;

    @RequestMapping(value="/register", method = RequestMethod.POST)
    public JsonResult register(@RequestBody Company company) throws  Exception{
        System.out.println("注册信息：" + new Gson().toJson(company));
        try{
            companyService.register(company);
            return JsonResult.build(StatusCode.SUCCESS);
        } catch (Exception ex){
            System.out.println(ex.getMessage());
            return JsonResult.customBuild(ex.getMessage());
        }
    }

    @RequestMapping(value="/login", method = RequestMethod.POST)
    public JsonResult login(@RequestBody Company company) throws  Exception{
        System.out.println("登录信息：" + new Gson().toJson(company));
        Company obj = null;
        try{
            obj = companyService.login(company);
            JSONObject jsonObj = JSONObject.fromObject(obj);
            jsonObj.remove("password");
            return JsonResult.build(StatusCode.SUCCESS, jsonObj);
        } catch (Exception ex){
            ex.printStackTrace();
            System.out.println(ex.getMessage());
            return JsonResult.customBuild(ex.getMessage());
        }
    }
}
