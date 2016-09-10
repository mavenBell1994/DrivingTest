package com.readygo.drivingtest.service;

import java.util.List;

import com.readygo.drivingtest.entity.Quiz;

public interface QuizService {

	public List<Quiz> findAllDiffQuizs();

	public Quiz findDiffQuizById(int qid);
	
	public boolean addErrTotal(int qid);
	
	/**
	 * hong,910
	 * @return:所有的quiz
	 */
	public List<Quiz> allQuiz();
}
