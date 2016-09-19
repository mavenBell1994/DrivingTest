package com.readygo.drivingtest.handler;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.readygo.drivingtest.entity.Quiz;
import com.readygo.drivingtest.entity.SelfErrors;
import com.readygo.drivingtest.service.QuizService;
import com.readygo.drivingtest.service.SelfErrorsService;

@Controller
@RequestMapping("/selfErrors")
public class SelfErrorsHandler {
	@Autowired
	private SelfErrorsService selfErrorsService;
	@Autowired
	private QuizService quizService;

	@RequestMapping(value = "/saveSelfErrors")
	public void saveSelfErrors(SelfErrors selfErrors, PrintWriter out) {
		int qid = Integer.parseInt(selfErrors.getErrorSave());
		int errorIndex = getSelf(selfErrors.getCid(), selfErrors.getErrorSave());
		boolean flag;
		if (errorIndex >= 0) {
			flag = false;
		} else {
			flag = selfErrorsService.updateErrorSave(selfErrors);
		}

		if (flag && quizService.addErrTotal(qid)) {
			out.println(true);
		} else {
			out.println(false);
		}
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/addfavorSave")
	public void addfavorSave(SelfErrors selfErrors, PrintWriter out) {
		SelfErrors error = selfErrorsService.getSelfErrors(selfErrors.getCid());
		int errorIndex = getIsSave(selfErrors.getCid(), selfErrors.getSave());
		if (errorIndex >= 0) {
			out.println(false);
		} else {
			out.println(selfErrorsService.updateSave(selfErrors));
		}
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/removeErrorSave")
	public void removeErrorSave(SelfErrors selfErrors, PrintWriter out) {
		SelfErrors error = selfErrorsService.getSelfErrors(selfErrors.getCid());
		int errorIndex = -1;
		String saves = error.getErrorSave();
		String qid = selfErrors.getErrorSave();
		if (error != null) {
			if (saves != null && !saves.equals("")) {
				errorIndex = saves.indexOf(qid);
			}
		}
		String save = null;
		if (errorIndex >= 0) {
			try {
				save = saves.replace("@" + qid, "");
			} catch (Exception e) {
				e.printStackTrace();
				out.println(false);
			}

			out.println(selfErrorsService.updateRemoveErrorSave(save));
		}else{
			out.println(false);
		}
		out.flush();
		out.close();
	}
//	获取所有的错题信息
	@RequestMapping("/getSelfErrors")
	@ResponseBody
	public List<Quiz>  getSelfErrors(SelfErrors selfErrors){
		SelfErrors errors= selfErrorsService.getSelfErrors(selfErrors.getCid());
		String[] errorSaves=null;
		if(errors.getErrorSave()!=null){
		 errorSaves=errors.getErrorSave().split("@");
		}else{
			return null;
		}
		List<Quiz> quizs=new ArrayList<Quiz>();
		for (String qid : errorSaves) {
			if(qid!=null && !qid.equals("")){
				Quiz q=quizService.getQuizByQid(Integer.parseInt(qid));
				quizs.add(q);
			}
		}
			return quizs;
	}
//	获取所有的收藏信息
	@RequestMapping("/getSelfSaves")
	@ResponseBody
	public List<Quiz> getSelfSaves(SelfErrors selfErrors){
		SelfErrors selferrors= selfErrorsService.getSelfErrors(selfErrors.getCid());
		String[] saves=null;
		if(selferrors.getSave()!=null){
			saves=selferrors.getSave().split("@");
			}else{
				return null;
			}
		List<Quiz> quiz=new ArrayList<Quiz>();
		for (String qid : saves) {
			if(qid!=null && !qid.equals("")){
				Quiz q=quizService.getQuizByQid(Integer.parseInt(qid));
				quiz.add(q);
			}
		}
			return quiz;
	}
	//收藏
	@RequestMapping(value ="/getFavorSave")
	public void getFavorSave(SelfErrors selfErrors,PrintWriter out) {
		SelfErrors error = selfErrorsService.getSelfErrors(selfErrors.getCid());
		Gson gson=new Gson();
		out.println(gson.toJson(error));
		out.flush();
		out.close();
	}
	//取消收藏
	@RequestMapping(value ="/removeFavorSave")
	public void removeFavorSave(SelfErrors selfErrors,PrintWriter out) {
		SelfErrors error = selfErrorsService.getSelfErrors(selfErrors.getCid());
		String saves=error.getSave();
		String qid=selfErrors.getSave();
		if(saves.indexOf("@"+qid)!=-1){
			saves=saves.replace("@"+qid, "");
		}
		out.println(selfErrorsService.removeFavorSave(saves));
		out.flush();
		out.close();
	}
	public int getSelf(int cid, String qid) {
		SelfErrors error = selfErrorsService.getSelfErrors(cid);
		int errorIndex = -1;
		if (error != null) {
			String errorSave = error.getErrorSave();
			if (errorSave != null && !errorSave.equals("")) {
				errorIndex = errorSave.indexOf(qid);
			}
		}
		return errorIndex;
	}

	public int getIsSave(int cid, String qid) {
		SelfErrors error = selfErrorsService.getSelfErrors(cid);
		int errorIndex = -1;
		if (error != null) {
			String saves = error.getSave();
			if (saves != null && !saves.equals("")) {
				errorIndex = saves.indexOf(qid);
			}
		}
		return errorIndex;
	}
}
