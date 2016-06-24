package com.ravi.dbService;

import org.springframework.beans.factory.annotation.Autowired;

import com.ravi.service.CategoryService;
import com.ravi.service.CommentService;
import com.ravi.service.ContactService;
import com.ravi.service.HomeSnapContentService;
import com.ravi.service.HomeSnapService;
import com.ravi.service.ItemService;
import com.ravi.service.MyQueryService;
import com.ravi.service.PriceService;

public class DbServices {
	
	@Autowired
	public ContactService contactService ;
	
	@Autowired
	public HomeSnapService homeSnapService ;
	
	@Autowired
	public HomeSnapContentService homeSnapContentService;
	
	@Autowired
	public MyQueryService myQueryService;

	@Autowired
	public CommentService commentService;
	
	@Autowired
	public PriceService priceService;
	
	@Autowired
	public ItemService itemService;
	
	@Autowired
	public CategoryService categoryService;
	
	public ContactService getContactService() {
		return contactService;
	}

	public HomeSnapService getHomeSnapService() {
		return homeSnapService;
	}

	public HomeSnapContentService getHomeSnapContentService() {
		return homeSnapContentService;
	}

	public MyQueryService getMyQueryService() {
		return myQueryService;
	}

	public CommentService getCommentService() {
		return commentService;
	}

	public PriceService getPriceService() {
		return priceService;
	}

	public ItemService getItemService() {
		return itemService;
	}

	public CategoryService getCategoryService() {
		return categoryService;
	}

}
