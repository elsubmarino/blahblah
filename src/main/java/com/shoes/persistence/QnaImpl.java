package com.shoes.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shoes.domain.Qna;

@Repository
public class QnaImpl implements QnaDo{
	@Inject
	private SqlSession sqlSession;
	
	final private String namespace="com.shoes.mapper.QnaMapper";

	@Override
	public void qnaRegister(Qna qna){ 
		sqlSession.insert(namespace+".qnaRegister",qna);
	}

	@Override
	public List<Qna> getLists(int num) {
		return sqlSession.selectList(namespace+".getLists",num);
	}

	@Override
	public Qna getList(int num) {
		return (Qna)sqlSession.selectOne(namespace+".getList",num);
	}

	@Override
	public int getCount() {
		return sqlSession.selectOne(namespace+".getCount");
	}
	
	

}
