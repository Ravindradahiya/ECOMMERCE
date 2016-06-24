package com.ravi.MyConstant;


public interface DomainConstant {

	interface CommonFields {
		public String ID = "id";
		public String STATUS = "status";
		public String CREATED_ON = "created_on";
		public String MODIFIED_ON = "modified_on";
		public String CREATED_BY = "created_by";
		public String MODIFIED_BY = "modified_by";
	}

	interface Contacts {
		public String TABLE_NAME = "contacts";
		public String FIRST_NAME = "first_name";
		public String LAST_NAME = "last_name";
		public String DOB = "dob";
		public String GENDER = "gender";
		public String ADDRESS = "address";
		public String CITY = "city";
		public String STATE = "state";
		public String PINCODE = "pin_code";
		public String COUNTRY = "country";
		public String REGION = "region";
		public String STD_CODE = "std_code";
		public String TELEPHONE_NUMBER = "telephone_number";
		public String MOBILE = "mobile";
		public String MOBILE2 = "mobile_2";
		public String EMAIL_ID = "email_id";
		public String REFERED_BY = "refered_by";
		public String  LOGIN_ID = "login_id";
		public String  PASSWORD = "password";
	}
	
	interface HomeSnapContent {
		public String TABLE_NAME = "home_snap_content";
		public String ID = "id";
		public String SNAP_ID = "snap_id";
		public String CONTENT = "content";
		public String SLIDER_NAME = "slider_name";
		public String LEFT = "lefta";
		public String WIDTH = "widtha";
		public String HEIGHT = "heighta";
		public String TOP = "topa";
	}

	interface HomeSnap {
		public String TABLE_NAME = "home_snap";
		public String ID = "id";
		public String SNAP = "snap";
	}
	
	interface Category {
		public String TABLE_NAME = "category";
		public String NAME = "name";
		public String DESCRIPTION = "description";
		public String IMAGE = "image";
		public String PARENT_CAT_ID = "parent_category_id";
		
		public String PARENT_CAT_NAME = "(select c.name from category c where c.id = parent_category_id limit 1)";
		public String PARENT_CAT_IMAGE = "(select c.image from category c where c.id = parent_category_id limit 1)";
		
	}
	
	interface Item {
		public String TABLE_NAME = "item";
		public String CATEGORY = "category";
		public String BRAND = "brand";
		public String LAUNCH = "launch";
		public String COLOR = "color";
		public String SIZE = "size";
		public String GROUP_NO = "group_no";
		public String QUANTITY = "quantity";
		public String STOCK = "stock";
		public String RATING = "rating";
		public String WEIGTH = "weigth";
		public String IMAGEA = "image_1";
		public String IMAGEB = "image_2";
		public String IMAGEC = "image_3";
		public String DESCRIPTION = "description";
		public String NAME = "name";
		public String CAT_NAME = "(select c.name from category c where c.id = category limit 1)";
		public String CAT_IMAGE = "(select c.image from category c where c.id = category limit 1)";
	}
	
	interface Comment {
		public String TABLE_NAME = "comment";
		public String USER = "user";
		public String COMMENT = "comment";
		public String RATING = "rating";
	}
	
	interface Price {
		public String TABLE_NAME = "price";
		public String HOLE_SALE_PRICE = "hole_sale_price";
		public String RETAIL_PRICE = "retail_price";
		public String DISCOUNT = "discount";
		public String SALE_PRICE = "sale_price";
		public String DIS_START_FROM = "dis_start_from";
		public String DIS_END_DATE = "dis_end_date";
	}
	
}
