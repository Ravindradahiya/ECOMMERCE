package com.ravi.dao;

import java.util.List;

import org.hibernate.criterion.Criterion;

import com.ravi.Exceptions.MyException;


@SuppressWarnings("unchecked")
public interface UserDao {
	
public Boolean saveOrUpdate (Object object) throws MyException ;

public List getList(Class class1) throws MyException ;

public Boolean delete(String tableName,Integer id,String ids,List<Object> idds,Integer idss[],String iids[],String condition)  throws MyException ;

//public List getList(Class class1,Criterion searchCriteria,Projection projection,String OrderByColum,String ascDesc)  throws MyException ;

public List getList(Class class1,Criterion searchCriteria,String projection[],String OrderByColum,String ascDesc)  throws MyException ;

public List getList(Class class1,Criterion searchCriteria,String projection[],String OrderByColum[],String ascDesc)  throws MyException ;

public List getList(String query)  throws MyException ;

public Boolean setChange(String query)  throws MyException ;

public List getList(String query, String colum[])  throws MyException ;

}
