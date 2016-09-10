package com.readygo.drivingtest.serviceimpl;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.readygo.drivingtest.entity.Admin;
import com.readygo.drivingtest.entity.TestRecord;
import com.readygo.drivingtest.service.AdminService;
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
	@Test
	public void testFindAllDiffQuizs() {
		List<TestRecord> allTest = trs.allTest();
		System.out.println( allTest );
	}

}
