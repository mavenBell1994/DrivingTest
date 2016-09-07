package com.readygo.drivingtest.handler;

import java.io.PrintWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

	@RequestMapping(value = "/getFavorSave")
	public void getFavorSave(PrintWriter out) {

		out.println();
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
