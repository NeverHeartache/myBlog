package com.myBlog.dao.login;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.myBlog.entity.login.SysUser;
import com.myBlog.entity.login.SysUserExample;
@Repository
public interface SysUserDao {
    int deleteByPrimaryKey(String userId);

    int insert(SysUser record);

    int insertSelective(SysUser record);

    List<SysUser> selectByExample(SysUserExample example);

    SysUser selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(SysUser record);

    int updateByPrimaryKey(SysUser record);
    
    SysUser queryUserByLoginName(String loginName);
    
}