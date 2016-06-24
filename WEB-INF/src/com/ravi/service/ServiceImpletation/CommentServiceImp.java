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
import com.ravi.domain.Comment;
import com.ravi.service.CommentService;

@SuppressWarnings("unchecked")
@Service("commentService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class CommentServiceImp implements CommentService {

	@Autowired
	UserDao userDao;

	@Override
	public void saveOrUpdate(Comment comment)throws MyException {
		userDao.saveOrUpdate(comment);
	}

	@Override
	public Boolean delete(Integer id,String ids,List<Object> idds,Integer idss[],String iids[],String condition) throws MyException {
		return userDao.delete(DomainConstant.Comment.TABLE_NAME, id, ids, idds, idss, iids, condition);
	}

	@Override
	public List<Comment> getList(Criterion criterion, String[] projection,String[] orderColum, String order) throws MyException {
		return userDao.getList(Comment.class,criterion,projection,orderColum,order);
	}

}
