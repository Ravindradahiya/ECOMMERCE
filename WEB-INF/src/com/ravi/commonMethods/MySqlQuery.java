package com.ravi.commonMethods;

public class MySqlQuery {

	public  static String getSameEmail(String emailId) {
		return "select c.email_id as emailid from contacts c where c.email_id = '"+emailId+"'";
	}

	public  static String getCategory() {
		return "select  "+
				"c.id as p1,c.name as p1name,c.description as p1desc, "+
				"cc.id as p2,cc.name as p2name,cc.description as p2desc, "+
				"ccc.id as p3,ccc.name as p3name,ccc.description as p3desc, "+
				"cccc.id as p4,ccc.name as p4name,cccc.description as p4desc "+
				"from category c " + 
				"left join category cc on cc.parent_category_id = c.id " +
				"left join category ccc on ccc.parent_category_id = cc.id " +
				"left join category cccc on cccc.parent_category_id = ccc.id " +
				"where c.parent_category_id =0;";
	}
}
