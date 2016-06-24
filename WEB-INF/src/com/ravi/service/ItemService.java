package com.ravi.service;

import java.util.List;

import org.hibernate.criterion.Criterion;

import com.ravi.Exceptions.MyException;
import com.ravi.domain.Item;

public interface ItemService  {
	
	public void saveOrUpdate(Item item) throws MyException;
	
	public Boolean delete(Integer id,String ids,List<Object> idds,Integer idss[],String iids[],String condition) throws MyException;

	public List<Item> getList(final Criterion criterion,final String projection[],final String orderColum[],final String order) throws MyException;
	
}
