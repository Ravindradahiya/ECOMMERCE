package com.ravi.MyConstant;

public interface DBConstant {

	public Integer PRICE_TOKEN = 1;
	
	public Integer PRICE_BOLI = 2;
	
	public Integer PRICE_OTHER = 3;

	public Integer COMMITTEE_STATUS_DRAFT = 3;
	
	public Integer STATUS_ACTIVE = 1;		//  After add token and member

	public Integer STATUS_INACTIVE = 0;		//  After add token and member
	
	public Integer COMMITTEE_STATUS_SAVE = 2; 		//	After Save commitee detail not add on member token etc
	
	public String SAVE_SUCESS = "s";

	public String SAVE_FAILURE = "f";

	public String RECORD_NO_FOUND = "rnf";


	public String RNS = "Record Not saved. Please try again.";

	public String RSS = "Record saved successfully.";

	public String RNF = "Record not found.";
	
	
}
