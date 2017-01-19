package com.shoes.persistence;

import com.shoes.domain.Users;

public interface MemberDo {
	boolean findUser(String email);
	void insertUser(Users user);
	Users isItCorrect(Users user);
}
