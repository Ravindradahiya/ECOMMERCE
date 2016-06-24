package com.ravi.service;

import java.util.List;

import com.ravi.Exceptions.MyException;

public interface MyQueryService {
	
	public Boolean getChange(final String query) throws MyException;

	public Boolean setUpdate(final String tableName,final String columName,final String value,final String condition) throws MyException;
	
	public Boolean setDelete(final String tableName,final String condition) throws MyException;

	public List<?> getList(final String query) throws MyException;

	public List<?> getList(final String query,final String colum[]) throws MyException;

}
