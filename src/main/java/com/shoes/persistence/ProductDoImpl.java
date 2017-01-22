package com.shoes.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shoes.domain.ShoesMain;

@Repository
public class ProductDoImpl implements ProductDo{
	@Inject
	SqlSession sqlSession;
	
	final private String namespace="com.shoes.mapper.ProductMapper";

	@Override
	public ShoesMain showMeTheProduct(int num) {
		return (ShoesMain)sqlSession.selectOne(namespace+".showMeTheProduct",num);
	}

}
