package com.wzy.service;

import com.wzy.pojo.Admin;

public interface AdminService {

    /**
     *  登录
     * @param name
     * @param password
     * @return
     */
    public Integer login(String name,String password);

    /**
     *  验证用户名是否存在
     * @param name
     * @return
     */
    public String verifyName(String name);

    /**
     *  注册
     * @param admin
     * @return
     */
    public Integer register(Admin admin);


}
