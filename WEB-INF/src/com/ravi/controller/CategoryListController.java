package com.ravi.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.ravi.MyConstant.DBConstant;
import com.ravi.MyConstant.PageConstant;
import com.ravi.MyConstant.commonConstant;
import com.ravi.commonMethods.CommonMethod;
import com.ravi.commonMethods.MyMethods;
import com.ravi.dbService.DbServices;
import com.ravi.domain.Category;
import com.ravi.dto.SessionDTO;
import com.ravi.dto.UploadFiles;

@Controller
public class CategoryListController {

	@Autowired
	private DbServices dbServices;
	
	@RequestMapping(value="/addCategoryInfo.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addCategory(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {

	    try {

	    	Category category = new Category();
	    	category.setId(8);
	    	category.setDescription("delete 1");
	    	dbServices.categoryService.saveOrUpdate(category);
	    	
	    }catch (Exception e) {
	    	e.printStackTrace();

	    }
		return new ModelAndView(PageConstant.ADD_CATEGORY);
	}
	
	@RequestMapping(value="/saveCategoryInfo.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView saveCategory(HttpServletRequest request,HttpServletResponse response,ModelMap map,Category category,
			@ModelAttribute("homeform") UploadFiles uploadFiles) {

		ModelAndView view = new ModelAndView(new RedirectView("category.html?mes="+DBConstant.SAVE_FAILURE));
	    try {
	    	Date dt = new Date();
			CommonMethod commonMethod = new CommonMethod(dbServices);
			commonMethod.setOnMap(request,map);
			
			Integer userId = ((SessionDTO) request.getSession().getServletContext().getAttribute("rajnishSession")).getId();
			List<String> files = MyMethods.copyFiles(uploadFiles, request.getRealPath("/")+ commonConstant.categoryPageSnap, dt);

			category.setImage(files.size() >=1 ? files.get(0) : "");
			
			category.setCreatedBy(userId);
			category.setCreatedOn(dt);
			category.setStatus(DBConstant.STATUS_ACTIVE);
			if(category.getParentCatId() == null) {
				category.setParentCatId(0);
			}
			dbServices.categoryService.saveOrUpdate(category);
		    if(category.getId() != null) {
		    	view = new ModelAndView(new RedirectView("categoryInfo.html?id="+category.getId()+"&mes="+DBConstant.SAVE_SUCESS));
		    }

	    }catch (Exception e) {
	    	e.printStackTrace();
	    }
			return view; 
	}
	
	@RequestMapping(value="/addSubCategoryInfo.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addSubCategory(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
	    try {
	    	modelMap.addAttribute("cat",dbServices.categoryService.getList(null,null, new String[]{"name"}, null));
	    }catch (Exception e) {
	        throw new RuntimeException(e);
	    }
		return new ModelAndView(PageConstant.ADD_SUB_CATEGORY);
	}
	
	@RequestMapping(value="/category.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView category(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap,String mes) {
	    try {
	    	List<Category> cat = dbServices.categoryService.getList(null,null, new String[]{"name"}, null);
	    	
	    	if(mes != null) {
	    		if(mes.equals(DBConstant.SAVE_SUCESS)) {
	    			modelMap.addAttribute("message",DBConstant.RSS);
	    		} else if(mes.equals(DBConstant.SAVE_FAILURE)) {
	    			modelMap.addAttribute("message",DBConstant.RNS);
	    		} else if(mes.equals(DBConstant.RECORD_NO_FOUND)) {
	    			modelMap.addAttribute("message",DBConstant.RNF);
	    		}
	    	}
	    	modelMap.addAttribute("cat",cat);
	    }catch (Exception e) {
	    	e.printStackTrace();
	    }
		return new ModelAndView(PageConstant.CATEGORY);
	}
	

	@RequestMapping(value="/categoryInfo.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView categoryInfo(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap,String mes,Integer id) {
		ModelAndView view = new ModelAndView(PageConstant.CATEGORY_INFO);
	    try {
	    	modelMap.addAttribute("cat",dbServices.categoryService.getList(Restrictions.eq("id", id),null, new String[]{"name"}, null).get(0));
	    }catch (Exception e) {
	        view = new ModelAndView(new RedirectView("category.html?mes="+DBConstant.RECORD_NO_FOUND));
	        e.printStackTrace();
	    }
		return view;
	}
	
	@RequestMapping(value="/test.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView test(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap,String mes,Integer id) {
		return new ModelAndView(new RedirectView("category.html?mes="+DBConstant.RECORD_NO_FOUND));
	}
	
}
