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
		return quizMapper.findAllDiffQuizs();
	}

	@Override
	public Quiz findDiffQuizById(int qid) {
		return quizMapper.findDiffQuizById(qid);
	}
	@Override
	public boolean addErrTotal(int qid) {
		return quizMapper.addErrTotal(qid) > 0;
	}

	/**
	 * 获取所有的quiz
	 * hong-913
	 */
	@Override
	public List<Quiz> allQuiz() {
		return quizMapper.allQuiz();
	}
	
	/**
	 * 根据qid查询
	 * hong-913
	 */
	@Override
	public Quiz getQuizByQid(int qid) {
		return quizMapper.getQuizByQid(qid);
	}

	/**
	 * 修改quiz
	 * hong-913
	 */
	@Override
	public int updateQuiz(Quiz quiz) {
		return quizMapper.updateQuiz(quiz);
	}

	/**
	 * 插入quiz
	 * hong-913
	 */
	@Override
	public int insertQuiz(Quiz quiz) {
		return quizMapper.insertQuiz(quiz);
	}

	/**
	 * 更新quiz
	 * hong-913
	 */
	@Override
	public int deleteQuiz(int qid) {
		return quizMapper.deleteQuiz(qid);
	}
}
