package com.readygo.drivingtest.mapper;

import com.readygo.drivingtest.entity.SelfErrors;

public interface SelfErrorsMapper {

	public int updateErrorSave(SelfErrors selfErrors);

	public int updateSave(SelfErrors selfErrors);

	public SelfErrors getSelfErrors(int cid);

	public int updateRemoveErrorSave(String errorSave);

	public int updateRemoveFavorSave(String saves);
}
