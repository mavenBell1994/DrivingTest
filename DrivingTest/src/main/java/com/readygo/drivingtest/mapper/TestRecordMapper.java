package com.readygo.drivingtest.mapper;

import java.util.List;

import com.readygo.drivingtest.entity.TestRecord;

/**
 * 9-10
 * 测试成绩表的mapper
 * @author Hong
 *
 */
public interface TestRecordMapper {
	/**
	 * 获取所有测试成绩的方法
	 * @return:所有测试成绩
	 */
	public List<TestRecord> allTest();
	
}
