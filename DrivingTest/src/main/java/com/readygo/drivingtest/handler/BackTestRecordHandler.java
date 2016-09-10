package com.readygo.drivingtest.handler;
import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.readygo.drivingtest.entity.Admin;
import com.readygo.drivingtest.entity.TestRecord;
import com.readygo.drivingtest.serviceimpl.AdminServiceImpl;
import com.readygo.drivingtest.serviceimpl.TestRecordServiceImpl;

/**
 * 后台admin的hangdler
 * @author Hong
 *
 */
@Controller
@RequestMapping("/backTestRec")
public class BackTestRecordHandler {
	@Autowired
	private TestRecordServiceImpl trsi ;
	
	@RequestMapping("/allTest")
	public void allTest(PrintWriter out){
		List<TestRecord> allTest = trsi.allTest();
		for(TestRecord a : allTest){
			System.out.println(a);
		}
		Gson gson=new Gson();
		out.println(gson.toJson(allTest));
		out.flush();
		out.close();
	}

}
