package com.example.comment.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.comment.dto.Comment;
import com.example.comment.dto.User;
import com.example.comment.repo.CommentRepo;
import com.example.comment.repo.UserRepo;

@Service
public class UserServiceImpl implements UserService {
	
	private static Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Autowired
	UserRepo uRepo;
	
	@Autowired
	CommentRepo cRepo;

	@Override
	@Transactional
	public int join(User user) {
		int result = uRepo.insert(user);
		logger.trace("가입 성공 : {}", user.getUserId());
		
		int i = 1/0;
		
		Comment comment = new Comment(0, "admin",user.getUserId()+"님이 가입했습니다.");
		result = cRepo.insert(comment);
		return result;
	}

}
