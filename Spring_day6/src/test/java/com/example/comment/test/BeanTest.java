package com.example.comment.test;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.assertThat;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.comment.config.CommentComfig;
import com.example.comment.dto.Comment;
import com.example.comment.dto.User;
import com.example.comment.repo.CommentRepo;
import com.example.comment.repo.UserRepo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes=CommentComfig.class)
public class BeanTest {
	
	@Autowired
	UserRepo user;
	
	@Autowired
	CommentRepo comment;
	
	@Autowired
	DataSource ds;
	
	@Autowired
	SqlSessionTemplate template;

/*	@Test
	public void test() {
		assertThat(comment, is(notNullValue()));
	}
	
	@Test
	public void testdb() throws SQLException {
		assertThat(ds, is(notNullValue()));
		Connection con = ds.getConnection();
		assertThat(con, is(notNullValue()));
	}*/
	
	/*@Test
	public void testtmp() throws SQLException {
		assertThat(template, is(notNullValue()));
	}*/
	
	/*@Test
	public void testInsertUser() throws SQLException {
		User newUser = new User("hong","1234");
		int result = user.insert(newUser);
		assertThat(result, is(1));
	}*/
	
	@Test
	public void testInsertComment() throws SQLException {
		Comment newCommnet = new Comment(0, "hong", "껄껄껄");
		int result = comment.insert(newCommnet);
		assertThat(result, is(1));
	}

}
