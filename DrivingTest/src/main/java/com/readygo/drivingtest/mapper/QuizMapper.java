package com.readygo.drivingtest.mapper;

import java.util.List;

import com.readygo.drivingtest.entity.Quiz;

public interface QuizMapper {

	List<Quiz> getAllDiffQuizs();

	Quiz getDiffQuizById(int qid);

}
