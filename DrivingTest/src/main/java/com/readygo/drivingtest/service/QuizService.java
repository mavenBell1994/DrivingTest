package com.readygo.drivingtest.service;

import java.util.List;

import com.readygo.drivingtest.entity.Quiz;

public interface QuizService {

	List<Quiz> findAllDiffQuizs();

	Quiz findDiffQuizById(int qid);
	boolean addErrTotal(int qid);
}
