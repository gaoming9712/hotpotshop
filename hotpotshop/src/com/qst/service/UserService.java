package com.qst.service;

import com.qst.model.User;

public interface UserService {
	public boolean login(User user);

	public boolean register(User user);
}
