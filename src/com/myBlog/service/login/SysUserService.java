package com.myBlog.service.login;

import java.util.List;

import com.myBlog.entity.login.SysUser;
import com.myBlog.entity.login.SysUserExample;

public interface SysUserService {
	/**
	 * 注册插入用户信息
	 * @return
	 */
	public int insertUser(SysUser user);
	/**
	 * 查询用户信息
	 * @return SysUser
	 */
	public SysUser queryUserByLoginName(String loginName);
	/**
	 * 用户注销
	 * @param userId
	 * @return
	 */
	public int deleteByPrimaryKey(String userId);
	/**
	 * 查询注册用户名是否已经存在
	 * @param loginName
	 * @return
	 */
	public boolean queryWhetherUserExist(String loginName);
	
    int insert(SysUser record);

    int insertSelective(SysUser record);

    List<SysUser> selectByExample(SysUserExample example);

    SysUser selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(SysUser record);

    int updateByPrimaryKey(SysUser record);
    
}
