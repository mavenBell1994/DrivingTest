package com.readygo.drivingtest.serviceimpl;

import static org.junit.Assert.*;

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

}
