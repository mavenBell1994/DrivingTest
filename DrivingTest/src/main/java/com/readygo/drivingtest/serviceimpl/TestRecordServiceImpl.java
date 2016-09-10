package com.readygo.drivingtest.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.readygo.drivingtest.entity.TestRecord;
import com.readygo.drivingtest.mapper.TestRecordMapper;
import com.readygo.drivingtest.service.TestRecordService;

@Service("testRecordService")
public class TestRecordServiceImpl implements TestRecordService {
	@Autowired
	private TestRecordMapper trm;

	@Override
	public List<TestRecord> allTest() {
		return trm.allTest();
	}


	

}
