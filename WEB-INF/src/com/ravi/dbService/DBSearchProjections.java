package com.ravi.dbService;

import java.util.List;
import java.util.Map;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

public class DBSearchProjections {
	
	public static Criterion eq(String colum,Object value) {
		return Restrictions.eq(colum, value);
	}
	
	public static Criterion orEq(Criterion criterion,String colum,Object value) {
		return Restrictions.or(criterion, Restrictions.eq(colum, value));
	}

	public static Criterion andEq(Criterion criterion,String colum,Object value) {
		return Restrictions.and(criterion, Restrictions.eq(colum, value));
	}

	public static Criterion in(String colum,List<Object> value) {
		return Restrictions.in(colum, value);
	}

	public static Criterion allEq(Map<String, Object> map) {
		return Restrictions.allEq(map);
	}
	
	public static Criterion between(String colum,Object low,Object high) {
		return Restrictions.between(colum, low,high);
	}

	public static Criterion eqProperty(String colum,String secColum) {
		return Restrictions.eqProperty(colum, secColum);
	}

	public static Criterion ge(String colum,Object value) {
		return Restrictions.ge(colum,value);
	}

	public static Criterion geProperty(String colum,String secColum) {
		return Restrictions.geProperty(colum, secColum);
	}

	public static Criterion gt(String colum,Object value) {
		return Restrictions.gt(colum, value); 
	}

	
	
	
	
	public static Criterion le(String colum,Object value) {
		return Restrictions.le(colum,value);
	}
	
}
