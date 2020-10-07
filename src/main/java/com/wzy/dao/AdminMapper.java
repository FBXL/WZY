package com.wzy.dao;

import com.wzy.pojo.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
    /**
     *  登录
     * @param name
     * @param password
     * @return
     */
    public Integer login(@Param("name") String name, @Param("password") String password);

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
