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
	QuizService quizService;
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
	/**
	 * hong,9-12
	 * 测试修改quiz
	 */
	@Test
	public void testUpdateQuiz() {
		Quiz quiz = new Quiz(30,"测试用的题目","A.不是a@B.就是我@C.a说的对@D.c没有问题@B",1,"f:\\mywork\\pics","判断题","测试一下ZZZzzz",123);
		
		quiz.setErrTotal(quiz.getErrTotal() + 1);
		System.out.println(quiz);
		int result = quizService.updateQuiz(quiz);
		System.out.println(result);
	}
	
	/**
	 * hong,9-12
	 * 测试插入quiz
	 */
	@Test
	public void testInsertQuiz() {
		Quiz quiz = new Quiz("测试用的题目","A.不是a@B.就是我@C.a说的对@D.c没有问题@B",1,"f:\\mywork\\pics","判断题","测试一下ZZZzzz",300);
		System.out.println(quiz.toString());
		int result = quizService.insertQuiz(quiz);
		System.out.println(result);
	}
	
	/**
	 * hong,9-12
	 * 测试删除quiz
	 */
	@Test
	public void testDeleteQuiz() {
		Integer qid = 31;
		int result = quizService.deleteQuiz(qid);
		System.out.println(result);
	}
	
}
