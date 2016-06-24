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
import com.ravi.domain.Price;
import com.ravi.service.PriceService;

@SuppressWarnings("unchecked")
@Service("priceService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class PriceServiceImp implements PriceService {

	@Autowired
	UserDao userDao;

	@Override
	public void saveOrUpdate(Price price)throws MyException {
		userDao.saveOrUpdate(price);
	}

	@Override
	public Boolean delete(Integer id,String ids,List<Object> idds,Integer idss[],String iids[],String condition) throws MyException {
		return userDao.delete(DomainConstant.Price.TABLE_NAME, id, ids, idds, idss, iids, condition);
	}

	@Override
	public List<Price> getList(Criterion criterion, String[] projection,String[] orderColum, String order) throws MyException {
		return userDao.getList(Price.class,criterion,projection,orderColum,order);
	}

}
