package com.readygo.drivingtest.service;

import com.readygo.drivingtest.entity.SelfErrors;

public interface SelfErrorsService {

	boolean updateErrorSave(SelfErrors selfErrors);
	boolean updateSave(SelfErrors selfErrors);
	SelfErrors getSelfErrors(int cid);
	boolean updateRemoveErrorSave(String errorSave);
	
}
