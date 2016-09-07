package com.readygo.drivingtest.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.readygo.drivingtest.entity.SelfErrors;
import com.readygo.drivingtest.mapper.SelfErrorsMapper;
import com.readygo.drivingtest.service.SelfErrorsService;
@Service("selfErrorsService")
public class SelfErrorsServiceImpl implements SelfErrorsService{
	@Autowired
	private SelfErrorsMapper selfErrorsMapper;
	@Override
	public boolean updateErrorSave(SelfErrors selfErrors) {
			return selfErrorsMapper.updateErrorSave(selfErrors)>0;
	}
	@Override
	public boolean updateSave(SelfErrors selfErrors) {
		return selfErrorsMapper.updateSave(selfErrors)>0;
	}
	@Override
	public SelfErrors getSelfErrors(int cid) {
		return selfErrorsMapper.getSelfErrors(cid);
	}
	@Override
	public boolean updateRemoveErrorSave(String save) {
		return selfErrorsMapper.updateRemoveErrorSave(save)>0;
	}
	
	
}
