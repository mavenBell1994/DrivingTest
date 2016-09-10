package com.readygo.drivingtest.service;

import java.util.List;

import com.readygo.drivingtest.entity.TestRecord;

public interface TestRecordService {
	/**
	 * 获取所有测试成绩的方法
	 * @return:所有测试成绩
	 */
	public List<TestRecord> allTest();
}
