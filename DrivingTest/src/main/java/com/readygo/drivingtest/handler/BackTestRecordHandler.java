package com.readygo.drivingtest.handler;
import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.readygo.drivingtest.entity.TestRecord;
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
	
	/**
	 * 查看所有的测试成绩信息
	 * @param out
	 */
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
	
	/**
	 * hong9-13
	 * 添加TestRecord
	 * @param TestRecord
	 * @param out
	 */
	@RequestMapping("/addTestRecord")
	public void addTestRecord(TestRecord testRecord,PrintWriter out){
		int result = trsi.addTestRecord(testRecord);
		if(result==1){
			out.println(true);
		}else{
			out.println(false);			
		}
		out.flush();
		out.close();
	}
	
	/**
	 * hong9-13
	 * 删除TestRecord
	 * @param TestRecord
	 * @param out
	 */
	@RequestMapping("/delTestRecord")
	public void delTestRecord(int recId,PrintWriter out){
		int result = trsi.delTestRecord(recId);
		if(result==1){
			out.println(true);
		}else{
			out.println(false);			
		}
		out.flush();
		out.close();
	}
	
	/**
	 * hong9-13
	 * 修改TestRecord
	 * @param TestRecord
	 * @param out
	 */
	@RequestMapping("/updateTestRecord")
	public void updateTestRecord(TestRecord testRecord,PrintWriter out){
		int result = trsi.updateTestRecord(testRecord);
		if(result==1){
			out.println(true);
		}else{
			out.println(false);			
		}
		out.flush();
		out.close();
	}
	
}
