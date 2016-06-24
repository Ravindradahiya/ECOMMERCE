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
import com.ravi.domain.Item;
import com.ravi.service.ItemService;

@SuppressWarnings("unchecked")
@Service("itemService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ItemServiceImp implements ItemService {

	@Autowired
	UserDao userDao;

	@Override
	public void saveOrUpdate(Item item)throws MyException {
		userDao.saveOrUpdate(item);
	}

	@Override
	public Boolean delete(Integer id,String ids,List<Object> idds,Integer idss[],String iids[],String condition) throws MyException {
		return userDao.delete(DomainConstant.Item.TABLE_NAME, id, ids, idds, idss, iids, condition);
	}

	@Override
	public List<Item> getList(Criterion criterion, String[] projection,String[] orderColum, String order) throws MyException {
		return userDao.getList(Item.class,criterion,projection,orderColum,order);
	}

}
