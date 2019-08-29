package com.myBlog.service.impl.login;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.myBlog.dao.login.SysUserDao;
import com.myBlog.entity.login.SysUser;
import com.myBlog.service.login.SysUserService;
import com.myBlog.util.StrUtil;

@Service
public class SysUserServiceImpl implements SysUserService {
	@Resource
	private SysUserDao sysUserDao;		
	
	/**
	 * 新建用户信息
	 */
	@Override
	public int insertUser(SysUser user) {
		return sysUserDao.insert(user);
	}
	/**
	 * 查询用户信息
	 */
	@Override
	public SysUser queryUserByLoginName(String loginName) {
		return sysUserDao.queryUserByLoginName(loginName);
	}
	
	@Override
	public int deleteByPrimaryKey(String userId) {
		return sysUserDao.deleteByPrimaryKey(userId);
	}
	
	@Override
	public boolean queryWhetherUserExist(String loginName) {
		SysUser user = sysUserDao.queryUserByLoginName(loginName);
		if(StrUtil.isNull(user)){
//			没有用户ID，不存在该用户
			return false;
		}
		return true;
	}
}
