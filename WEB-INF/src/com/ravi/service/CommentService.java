package com.ravi.service;

import java.util.List;

import org.hibernate.criterion.Criterion;

import com.ravi.Exceptions.MyException;
import com.ravi.domain.Comment;

public interface CommentService  {
	
	public void saveOrUpdate(Comment comment) throws MyException;
	
	public Boolean delete(Integer id,String ids,List<Object> idds,Integer idss[],String iids[],String condition) throws MyException;

	public List<Comment> getList(final Criterion criterion,final String projection[],final String orderColum[],final String order) throws MyException;
	
}
