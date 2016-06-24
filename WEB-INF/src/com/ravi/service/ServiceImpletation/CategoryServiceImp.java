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
import com.ravi.domain.Category;
import com.ravi.service.CategoryService;

@SuppressWarnings("unchecked")
@Service("CategoryService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class CategoryServiceImp implements CategoryService {

	@Autowired
	UserDao userDao;

	@Override
	public void saveOrUpdate(Category category)throws MyException {
		userDao.saveOrUpdate(category);
	}

	@Override
	public Boolean delete(Integer id,String ids,List<Object> idds,Integer idss[],String iids[],String condition) throws MyException {
		return userDao.delete(DomainConstant.Category.TABLE_NAME, id, ids, idds, idss, iids, condition);
	}

	@Override
	public List<Category> getList(Criterion criterion, String[] projection,String[] orderColum, String order) throws MyException {
		return userDao.getList(Category.class,criterion,projection,orderColum,order);
	}

}
