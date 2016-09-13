package com.readygo.drivingtest.serviceimpl;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.readygo.drivingtest.entity.TestRecord;
import com.readygo.drivingtest.service.TestRecordService;
/**
 * 测试testRecordMapper等
 * @author Hong
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class TestRecordServiceImplTest {
	@Autowired
	private TestRecordService trs;
	/**
	 * 测试获取所有的测试信息
	 */
	@Test
	public void testAllTest() {
		List<TestRecord> allTest = trs.allTest();
		System.out.println( allTest );
	}
	
	/**
	 * 测试插入测试信息
	 */
	@Test
	public void testAddTestRecord() {
		TestRecord testRecord = new TestRecord( 1,"科目一","顺序练习",10,"测试用的","" );
		int result = trs.addTestRecord(testRecord);
		System.out.println( result );
	}
	
	/**
	 * 测试删除测试信息
	 */
	@Test
	public void testDelTestRecord() {
		int recId = 10008;
		int result = trs.delTestRecord(recId);
		System.out.println( result );
	}
	
	/**
	 * 测试修改测试信息
	 */
	@Test
	public void testUpdateTestRecord() {
		TestRecord testRecord = new TestRecord(10008, 1,"科目一","顺序练习",(new Date()).toString(),13,"测试用的","没有备注" );

		int result = trs.updateTestRecord(testRecord);
		System.out.println( result );
	}
	
}
