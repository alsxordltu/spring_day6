package com.example.comment.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Comment {
	private Integer commentNo;
	private String userId;
	private String comment;

}
