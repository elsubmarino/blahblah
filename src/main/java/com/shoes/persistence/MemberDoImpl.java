package com.shoes.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shoes.domain.Users;

@Repository
public class MemberDoImpl implements MemberDo{
	@Inject
	private SqlSession sqlSession;
	
	final private String namespace="com.shoes.mapper.MemberMapper";
	
	@Override
	public boolean findUser(String email) {
		return sqlSession.selectOne(namespace+".findUser",email).equals("true")?true:false;
	}

	@Override
	public void insertUser(Users user) {
		sqlSession.insert(namespace+".insertUser",user);
	}

	@Override
	public Users isItCorrect(Users user) {
		return (Users) sqlSession.selectOne(namespace+".isItCorrect",user);
	}

}
