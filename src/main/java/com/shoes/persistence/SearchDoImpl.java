package com.shoes.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shoes.domain.ShoesMain;



@Repository
public class SearchDoImpl implements SearchDo {
	
	@Inject
	SqlSession sqlSession;
	
	final private String namespace="com.shoes.mapper.SearchMapper";

	@Override
	public List<ShoesMain> searchIt(String title) {
		return sqlSession.selectList(namespace+".searchIt",title);
	}

}
