package com.readygo.drivingtest.handler;

import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.readygo.drivingtest.entity.Quiz;
import com.readygo.drivingtest.service.QuizService;

@Controller
@RequestMapping("/backquiz")
public class BackQuizHandler {
	@Autowired
	private QuizService quizService;

	
	/**
	 * hong,9-10
	 * @param out显示所有的quiz
	 */
	@RequestMapping("/allQuiz")
	public void findAllDiffQuizs(PrintWriter out){
		List<Quiz> quizs=quizService.allQuiz();
		Gson gson=new Gson();
		for(Quiz q:quizs){
			System.out.println(q);
		}
		out.println(gson.toJson(quizs));
		out.flush();
		out.close();
	}
	
	
	/**
	 * hong,9-10
	 * @param out显示所有的quiz
	 */
	@RequestMapping("/getQuizByQid")
	public void getQuizByQid(PrintWriter out,int qid){
		Quiz quiz=quizService.getQuizByQid(qid);
		Gson gson=new Gson();
		System.out.println(quiz);
		out.println(gson.toJson(quiz));
		out.flush();
		out.close();
	}
	
	
}