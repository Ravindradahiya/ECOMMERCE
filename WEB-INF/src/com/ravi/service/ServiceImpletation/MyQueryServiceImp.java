package com.ravi.service.ServiceImpletation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.ravi.Exceptions.MyException;
import com.ravi.dao.UserDao;
import com.ravi.service.MyQueryService;

@SuppressWarnings("unchecked")
@Service("myQueryService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class MyQueryServiceImp implements MyQueryService {

	@Autowired
	UserDao userDao;

	@Override
	public Boolean getChange(final String query) throws MyException {
		return userDao.setChange(query);
	}

	@Override
	public List<?> getList(final String query) throws MyException {
		return userDao.getList(query);
	}

	@Override
	public List<?> getList(final String query, final String[] colum) throws MyException {
		return userDao.getList(query, colum);
	}

	@Override
	public Boolean setUpdate(final String tableName,final  String columName,final  String value,final String condition) throws MyException {
		String query = "update " + tableName + " set " + columName  + "= " + value + " where  " + condition;
		return userDao.setChange(query);
	}

	@Override
	public Boolean setDelete(final String tableName,final String condition) throws MyException {
		String query = "delete from "+tableName+" where " + condition;
		return userDao.setChange(query);
	}


}
