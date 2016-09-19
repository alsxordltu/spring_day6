package com.example.comment.test;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.comment.config.CommentComfig;
import com.example.comment.dto.User;
import com.example.comment.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes=CommentComfig.class)
@Sql({"/dbschema/comment_schema.sql","/dbschema/comment_data.sql"})
public class UserServiceTest {
	
	@Autowired
	UserService service;

/*	@Test
	public void testService() {
		assertThat(service, is(notNullValue()));
	}*/
	
	@Test 
	public void testJoin(){
		User user = new User("jmt","1234");
		int result = service.join(user);
		assertThat(result, is(1));
	}

}
