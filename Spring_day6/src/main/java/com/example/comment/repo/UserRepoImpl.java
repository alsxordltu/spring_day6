package com.example.comment.repo;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.comment.dto.Comment;
import com.example.comment.dto.User;

@Repository
public class UserRepoImpl implements UserRepo{
	
	private final String NAME_SPACE = "com.example.UserMapper.";
	
	@Autowired
	SqlSessionTemplate template;

	@Override
	public int insert(User user) {
		String stmt = NAME_SPACE + "insert";
		return template.update(stmt, user);
	}

}
