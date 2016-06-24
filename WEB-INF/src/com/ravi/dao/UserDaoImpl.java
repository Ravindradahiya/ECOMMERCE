package com.ravi.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ravi.Exceptions.MyException;


@SuppressWarnings("unchecked")
@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public Boolean saveOrUpdate(Object object) {
		sessionfactory.getCurrentSession().saveOrUpdate(object);
		return true;
	}

	@Override
	public List getList(Class class1) {
//		List<Object> userlist = sessionfactory.getCurrentSession().createCriteria(User.class).list();
		return sessionfactory.getCurrentSession().createCriteria(class1).list();
	}
//
//	@Override
//	public List getList(Class class1, Criterion searchCriteria,
//			Projection projection, String OrderByColum, String ascDesc) {
//		Criteria criteria = sessionfactory.getCurrentSession().createCriteria(class1);
//		if(searchCriteria != null) {
//			criteria.add(searchCriteria);
//		}
//		if(projection != null) {
//			criteria.setProjection(projection);
//		}
//		if(OrderByColum != null) {
//			criteria.addOrder(Order.asc(OrderByColum));
//		}
//		if(ascDesc != null) {
//			if(ascDesc.equalsIgnoreCase("asc")) {
//				criteria.addOrder(Order.asc(OrderByColum));
//			} else {
//				criteria.addOrder(Order.desc(OrderByColum));
//			}
//		}
//		return criteria.list();
//	}
	

	@Override
	public List getList(Class class1, Criterion searchCriteria,String projection[], String OrderByColum, String ascDesc) {
		Criteria criteria = sessionfactory.getCurrentSession().createCriteria(class1);
		if(searchCriteria != null) {
			criteria.add(searchCriteria);
		}
		if(projection != null && projection.length > 0) {
			ProjectionList proList = Projections.projectionList();
			for (int i = 0; i < projection.length; i++) {
				proList.add(Projections.property(projection[i]));
			}
			criteria.setProjection(proList);
		}
		if(OrderByColum != null) {
			criteria.addOrder(Order.asc(OrderByColum));
		}
		if(ascDesc != null) {
			if(ascDesc.equalsIgnoreCase("asc")) {
				criteria.addOrder(Order.asc(OrderByColum));
			} else {
				criteria.addOrder(Order.desc(OrderByColum));
			}
		}
		return criteria.list();
	}

	@Override
	public List getList(Class class1, Criterion searchCriteria,
			String[] projection, String[] OrderByColum, String ascDesc) {
		Criteria criteria = sessionfactory.getCurrentSession().createCriteria(class1);
		if(searchCriteria != null) {
			criteria.add(searchCriteria);
		}
		if(projection != null && projection.length > 0) {
			ProjectionList proList = Projections.projectionList();
			for (int i = 0; i < projection.length; i++) {
				proList.add(Projections.property(projection[i]));
			}
			criteria.setProjection(proList);
		}
		if(OrderByColum != null) {
			criteria.addOrder(Order.asc(OrderByColum[0]));
		}
		if(ascDesc != null) {
			if(ascDesc.equalsIgnoreCase("asc")) {
				criteria.addOrder(Order.asc(OrderByColum[0]));
			} else {
				criteria.addOrder(Order.desc(OrderByColum[0]));
			}
		}
		return criteria.list();
	}

	public String addIds(String id,String addOn) {
		if(id == null || id.isEmpty()) {
			id = addOn;
		} else {
			id = id + "," + addOn;
		}
		return id;
	}
	
	@Override
	public Boolean delete(String tableName,Integer id, String ids, List<Object> idds,
			Integer[] idss, String[] iids, String condition) {
		String delIds = "";
		if(condition == null) condition = "";
		if(id != null) delIds = addIds(delIds,id.toString());
		if(ids != null && !ids.isEmpty()) delIds = addIds(delIds,ids);
		if(idds != null ) {
			for (int i = 0; i < idds.size(); i++) {
				delIds = addIds(delIds,idds.get(i)+"");	
			}
			
		}
		if(idss != null ) {
			for (int i = 0; i < idss.length; i++) {
				delIds = addIds(delIds,idss[i]+"");	
			}
		}
		if(idss != null ) {
			for (int i = 0; i < iids.length; i++) {
				delIds = addIds(delIds,iids[i]+"");	
			}
		}
		Query query = sessionfactory.getCurrentSession().createSQLQuery("delete from "+tableName+" where id in ("+delIds+")"+ condition);
		query.executeUpdate();
		return true;
	}

	@Override
	public List getList(String queryIs) {
		Query query = sessionfactory.getCurrentSession().createSQLQuery(queryIs);
		return query.list();
	}

	@Override
	public List getList(String queryIs, String[] colum) {
		Query query = sessionfactory.getCurrentSession().createSQLQuery(queryIs);
		return query.list();
	}

	@Override
	public Boolean setChange(String queryIs) throws MyException {
		Query query = sessionfactory.getCurrentSession().createSQLQuery(queryIs);
		query.executeUpdate();
		return true;
	}	
	
//							View Regarding Queries 
//	   public void listEmployeesEntity( ){
//		      Session session = factory.openSession();
//		      Transaction tx = null;
//		      try{
//		         tx = session.beginTransaction();
//		         String sql = "SELECT * FROM EMPLOYEE";
//		         SQLQuery query = session.createSQLQuery(sql);
//		         query.addEntity(Employee.class);
//		         List employees = query.list();
//
//		         for (Iterator iterator = 
//		                           employees.iterator(); iterator.hasNext();){
//		            Employee employee = (Employee) iterator.next(); 
//		            System.out.print("First Name: " + employee.getFirstName()); 
//		            System.out.print("  Last Name: " + employee.getLastName()); 
//		            System.out.println("  Salary: " + employee.getSalary()); 
//		         }
//		         tx.commit();
//		      }catch (HibernateException e) {
//		         if (tx!=null) tx.rollback();
//		         e.printStackTrace(); 
//		      }finally {
//		         session.close(); 
//		      }
//		   }

}

//Entity queries:
//	The above queries were all about returning scalar values, basically returning the "raw" values from the resultset. The following is the syntax to get entity objects as a whole from a native sql query via addEntity().
//
//	String sql = "SELECT * FROM EMPLOYEE";
//	SQLQuery query = session.createSQLQuery(sql);
//	query.addEntity(Employee.class);
//	List results = query.list();


//Named SQL queries:
//	The following is the syntax to get entity objects from a native sql query via addEntity() and using named SQL query.
//
//	String sql = "SELECT * FROM EMPLOYEE WHERE id = :employee_id";
//	SQLQuery query = session.createSQLQuery(sql);
//	query.addEntity(Employee.class);
//	query.setParameter("employee_id", 10);
//	List results = query.list();


//Scalar queries:
//	The most basic SQL query is to get a list of scalars (values) from one or more tables. Following is the syntax for using native SQL for scalar values:
//
//	String sql = "SELECT first_name, salary FROM EMPLOYEE";
//	SQLQuery query = session.createSQLQuery(sql);
//	query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
//	List results = query.list();



//Native SQL queries example
//Hibernate provide a createSQLQuery method to let you call your native SQL statement directly.
//
//1. In this example, you tell Hibernate to return you a Stock.class, all the select data (*) will match to your Stock.class properties automatically.
//
//Query query = session.createSQLQuery(
//"select * from stock s where s.stock_code = :stockCode")
//.addEntity(Stock.class)
//.setParameter("stockCode", "7277");
//List result = query.list();
//2. In this example, Hibernate will return you an Object array.
//
//Query query = session.createSQLQuery(
//"select s.stock_code from stock s where s.stock_code = :stockCode")
//.setParameter("stockCode", "7277");
//List result = query.list();
//Hibernate’s generated SQL statement is slow !?
//		I do not agreed on the statement “Hibernate’s generated SQL statement is slow”. Often times, i found out this is because of the developers do not understand the table relationship well, and did some wrong table mappings or misuse the fetch strategies. It will cause Hibernate generated some unnecessary SQL statements or join some unnecessary tables… And developers like to take this excuse and create their own SQL statement to quick fix the bug, and didn’t aware of the core problem will causing more bugs awaiting.
//
//		Conclusion
//		I admit sometime the native SQL statement is really more convenient and easy than HQL, but, do think carefully why you need a native SQL statement? Is this really Hibernate cant do it? If yes, then go ahead ~
//
//		P.S In Oracle database, i more prefer to use native SQL statement in many critical performance queries, because i need to put the “hint” to improve the Oracle query performance.
//
