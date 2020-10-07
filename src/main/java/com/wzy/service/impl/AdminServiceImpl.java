package com.wzy.service.impl;

import com.wzy.dao.AdminMapper;
import com.wzy.pojo.Admin;
import com.wzy.service.AdminService;

public class AdminServiceImpl implements AdminService {
    private AdminMapper adminMapper;
    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    public Integer login(String name, String password) {
        return adminMapper.login(name, password);
    }

    public String verifyName(String name) {
        return adminMapper.verifyName(name);
    }

    public Integer register(Admin admin) {
        return adminMapper.register(admin);
    }
}
