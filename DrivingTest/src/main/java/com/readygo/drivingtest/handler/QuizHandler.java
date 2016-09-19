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
@RequestMapping("/quiz")
public class QuizHandler {
	@Autowired
	private QuizService quizService;
	@RequestMapping("/findAllDiffQuizs")
	public void findAllDiffQuizs(PrintWriter out,ModelMap map){
		List<Quiz> quizs=quizService.findAllDiffQuizs();
		Gson gson=new Gson();
		map.put("quizs",quizs );
		System.out.println(	gson.toJson(quizs));
		out.println(gson.toJson(quizs));
		out.flush();
		out.close();
	}
	@RequestMapping("/findDiffQuizById")
	public String findDiffQuizById(String qid,PrintWriter out){
		System.out.println("==="+qid);
		Quiz quiz=quizService.findDiffQuizById(Integer.parseInt(qid));
		System.out.println("====quiz>>"+quiz);
		Gson gson=new Gson();
		out.println(gson.toJson(quiz));
		out.flush();
		out.close();
		return "redirect:/page/difficultExercise.jsp";
	}
	

	
	
}
