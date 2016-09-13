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

	/**
	 * hong9-13
	 * 增加testRecord
	 * @param testRecord
	 * @return
	 */
	public int addTestRecord(TestRecord testRecord);

	/**
	 * hong9-13
	 * 删除testRecord
	 * @param recId
	 * @return
	 */
	public int delTestRecord(int recId);

	/**
	 * hong9-13
	 * 修改testRecord
	 * @param testRecord
	 * @return
	 */
	public int updateTestRecord(TestRecord testRecord);
	
}
