package com.readygo.drivingtest.mapper;

import java.util.List;

import com.readygo.drivingtest.entity.Quiz;

public interface QuizMapper {

	public List<Quiz> findAllDiffQuizs();

	public Quiz findDiffQuizById(int qid);
	
	public int addErrTotal(int qid);
	
	/**
	 * hong,910
	 * @return:所有的quiz
	 */
	public List<Quiz> allQuiz();
	/**
	 * hong,910
	 * @param qid
	 * @return:返回指定qid的quiz
	 */
	public Quiz getQuizByQid(int qid);
}
