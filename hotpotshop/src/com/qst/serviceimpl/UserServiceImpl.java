package com.qst.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qst.dao.UserDao;
import com.qst.model.User;
import com.qst.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	@Qualifier("userDao")
	private UserDao userDao;
	
	@Override
	public boolean login(User user) {
		if(userDao.login(user)!=null){
			return true;
		}
		return false;
	}
	
	@Override
	
	public boolean register(User user){
		if(userDao.register(user)){
			return true;
		}
		return false;
	}
	
}
