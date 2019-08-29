package com.myBlog.service.login;

import com.myBlog.entity.login.SysUser;

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
}
