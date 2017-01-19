package com.store.shoes;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class TestMYSQL {
	@Inject
	private SqlSessionFactory factory;

	@Test
	public void connection(){
		
		try(SqlSession sess=factory.openSession()) {
			System.out.println(sess);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

