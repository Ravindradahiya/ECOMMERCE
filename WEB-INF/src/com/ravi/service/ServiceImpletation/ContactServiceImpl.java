package com.ravi.service.ServiceImpletation;


import java.util.List;

import org.hibernate.criterion.Criterion;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.ravi.Exceptions.MyException;
import com.ravi.MyConstant.DomainConstant;
import com.ravi.dao.UserDao;
import com.ravi.domain.Contacts;
import com.ravi.service.ContactService;

@SuppressWarnings("unchecked")
@Service("contactService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ContactServiceImpl implements ContactService {

	@Autowired
	UserDao userDao;

	@Override
	public void saveOrUpdate(Contacts contacts) throws MyException {
		userDao.saveOrUpdate(contacts);
	}

	@Override
	public Boolean delete(Integer id,String ids,List<Object> idds,Integer idss[],String iids[],String condition) throws MyException {
		return userDao.delete(DomainConstant.Contacts.TABLE_NAME, id, ids, idds, idss, iids, condition);
	}

	@Override
	public List<Contacts> getList(Criterion criterion, String[] projection,String[] orderColum, String order) throws MyException {
		return userDao.getList(Contacts.class,criterion,projection,orderColum,order);
	}

}
