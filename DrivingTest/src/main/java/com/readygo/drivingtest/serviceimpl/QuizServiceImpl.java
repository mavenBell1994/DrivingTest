package com.readygo.drivingtest.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.readygo.drivingtest.entity.Quiz;
import com.readygo.drivingtest.mapper.QuizMapper;
import com.readygo.drivingtest.service.QuizService;
@Service("quizService")
public class QuizServiceImpl implements QuizService {
	
	@Autowired
	private QuizMapper quizMapper;

	@Override
	public List<Quiz> findAllDiffQuizs() {
		return quizMapper.getAllDiffQuizs();
	}

	@Override
	public Quiz findDiffQuizById(int qid) {
		return quizMapper.getDiffQuizById(qid);
	}

}
