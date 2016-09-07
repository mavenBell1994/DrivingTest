package com.readygo.drivingtest.mapper;

import com.readygo.drivingtest.entity.SelfErrors;

public interface SelfErrorsMapper {

	int updateErrorSave(SelfErrors selfErrors);

	int updateSave(SelfErrors selfErrors);

	SelfErrors getSelfErrors(int cid);

	int updateRemoveErrorSave(String errorSave);
}
