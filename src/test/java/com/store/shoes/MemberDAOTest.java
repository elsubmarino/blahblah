package com.store.shoes;
import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.shoes.persistence.MemberDo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
	locations ={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class MemberDAOTest {

	@Inject
	private MemberDo dao;
	
	@Test
	public void testTime()throws Exception{
		
		System.out.println(dao.findUser("asdf@asdf.com"));
		
	}
	
}


