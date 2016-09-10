package com.readygo.drivingtest.serviceimpl;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.readygo.drivingtest.entity.Quiz;
import com.readygo.drivingtest.service.QuizService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class QuizServiceImplTest {
	@Autowired
	private QuizService quizService;
	@Test
	public void testFindAllDiffQuizs() {
		List<Quiz> ls=quizService.findAllDiffQuizs();
		System.out.println(ls);
	}
	
	/**
	 * hong,9-10
	 * 测试获取所有quiz
	 */
	@Test
	public void testAllQuiz() {
		List<Quiz> ls=quizService.allQuiz();
		System.out.println(ls);
	}
	/**
	 * hong,9-10
	 * 测试获取所有quiz
	 */
	@Test
	public void testGetQuizByQid() {
		Quiz ls=quizService.getQuizByQid(1);
		System.out.println(ls);
	}
}
