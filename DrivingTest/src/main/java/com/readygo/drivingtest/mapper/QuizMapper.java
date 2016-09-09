package com.readygo.drivingtest.mapper;

import java.util.List;

import com.readygo.drivingtest.entity.Quiz;

public interface QuizMapper {

	public List<Quiz> getAllDiffQuizs();

	public Quiz getDiffQuizById(int qid);
	public int updateErrorTotal(int qid);
}
