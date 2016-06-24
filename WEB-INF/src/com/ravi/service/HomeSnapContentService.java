package com.ravi.service;

import java.util.List;

import org.hibernate.criterion.Criterion;

import com.ravi.Exceptions.MyException;
import com.ravi.domain.HomeSnapContent;

public interface HomeSnapContentService {
	
	public void saveOrUpdate(HomeSnapContent homeSnapContent) throws MyException;

	public Boolean delete(Integer id,String ids,List<Object> idds,Integer idss[],String iids[],String condition) throws MyException;

	public List<HomeSnapContent> getList(final Criterion criterion,final String projection[],final String orderColum[],final String order) throws MyException;
	
}
