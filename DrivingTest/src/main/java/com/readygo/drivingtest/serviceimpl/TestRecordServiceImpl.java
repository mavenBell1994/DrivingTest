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

	/**
	 * hong9-13
	 * 增加testRecord
	 * @param testRecord
	 * @return
	 */
	@Override
	public int addTestRecord(TestRecord testRecord) {
		return trm.addTestRecord(testRecord);
	}
	
	/**
	 * hong9-13
	 * 删除
	 * @param recId
	 * @return
	 */
	@Override
	public int delTestRecord(int recId) {
		return trm.delTestRecord(recId);
	}

	/**
	 * hong9-13
	 * 修改testRecord
	 * @param testRecord
	 * @return
	 */
	@Override
	public int updateTestRecord(TestRecord testRecord) {
		return trm.updateTestRecord(testRecord);
	}


	

}
