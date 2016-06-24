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
import com.ravi.commonMethods.MySqlQuery;
import com.ravi.dbService.DbServices;
import com.ravi.domain.Category;
import com.ravi.domain.Item;
import com.ravi.dto.SessionDTO;
import com.ravi.dto.UploadFiles;

@Controller
public class ProductListController {

	@Autowired
	private DbServices dbServices;
	
	@RequestMapping(value="/addProductInfo.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addProductInfo(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {

	    try {
	    	modelMap.addAttribute("cat",dbServices.categoryService.getList(null,null,new String[]{"name"},null));
	    }catch (Exception e) {
	    	e.printStackTrace();
	    }
		return new ModelAndView(PageConstant.ADD_PRODUCT);
	}
	
	@RequestMapping(value="/saveProductInfo.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView saveProductInfo(HttpServletRequest request,HttpServletResponse response,ModelMap map,Item item,
			@ModelAttribute("homeform") UploadFiles uploadFiles) {

		ModelAndView view = new ModelAndView(new RedirectView("product.html?mes="+DBConstant.SAVE_FAILURE));
		
	    try {
	    	Date dt = new Date();
			CommonMethod commonMethod = new CommonMethod(dbServices);
			commonMethod.setOnMap(request,map);
			
			Integer userId = ((SessionDTO) request.getSession().getServletContext().getAttribute("rajnishSession")).getId();
			List<String> files = MyMethods.copyFiles(uploadFiles, request.getRealPath("/")+ commonConstant.itemPageSnap, dt);

			item.setImageA(files.size() >=1 ? files.get(0) : "");
			item.setImageA(files.size() >=2 ? files.get(1) : "");
			item.setImageA(files.size() >=3 ? files.get(2) : "");
			
			item.setCreatedBy(userId);
			item.setCreatedOn(dt);
			item.setStatus(DBConstant.STATUS_ACTIVE);
			if(item.getGroup_no() == null) {
				item.setGroup_no(0);
			}
			dbServices.itemService.saveOrUpdate(item);
			
		    if(item.getId() != null) {
//		    	response.sendRedirect("/productInfo.html?id="+item.getId()+"&mes="+DBConstant.SAVE_SUCESS);
				view = new ModelAndView(new RedirectView("productInfo.html?id="+item.getId()+"&mes="+DBConstant.SAVE_SUCESS));
//				view = new ModelAndView("redirect:/categoryInfo.html?id="+category.getId()+"&mes="+DBConstant.SAVE_SUCESS);
		    }
	    }catch (Exception e) {
	    	e.printStackTrace();
	    }
		return view; 
	}
	
	@RequestMapping(value="/addSubProductInfo.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addSubProduct(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
	    try {
	    	modelMap.addAttribute("cat",dbServices.categoryService.getList(null,null, new String[]{"name"}, null));
	    	modelMap.addAttribute("item",dbServices.itemService.getList(null,null, new String[]{"name"}, null));
	    }catch (Exception e) {
	    	e.printStackTrace();
	    }
		return new ModelAndView(PageConstant.ADD_SUB_PRODUCT);
	}
	
	@RequestMapping(value="/product.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView product(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap,String mes) {
	    try {
	    	List<Item> item = dbServices.itemService.getList(null,null, new String[]{"name"}, null);
	    	
	    	if(mes != null) {
	    		if(mes.equals(DBConstant.SAVE_SUCESS)) {
	    			modelMap.addAttribute("message",DBConstant.RSS);
	    		} else if(mes.equals(DBConstant.SAVE_FAILURE)) {
	    			modelMap.addAttribute("message",DBConstant.RNS);
	    		} else if(mes.equals(DBConstant.RECORD_NO_FOUND)) {
	    			modelMap.addAttribute("message",DBConstant.RNF);
	    		}
	    	}
	    	modelMap.addAttribute("item",item);
	    }catch (Exception e) {
	    	e.printStackTrace();
	    }
		return new ModelAndView(PageConstant.PRODUCT);
	}
	

	@RequestMapping(value="/productInfo.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView productInfo(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap,String mes,Integer id) {
		ModelAndView view = new ModelAndView(PageConstant.CATEGORY_INFO);
	    try {
	    	Item item = dbServices.itemService.getList(Restrictions.eq("id", id),null, new String[]{"name"}, null).get(0);    	
	    	Category cat =dbServices.categoryService.getList(Restrictions.eq("id", item.getCategory()),null, new String[]{"name"}, null).get(0);
	    	
	    	modelMap.addAttribute("item",item);
	    	modelMap.addAttribute("cat",cat);

	    }catch (Exception e) {
			view = new ModelAndView(new RedirectView("product.html?mes="+DBConstant.RECORD_NO_FOUND));
	    	e.printStackTrace();
//	        view = new ModelAndView("redirect:/product.html?mes="+DBConstant.RECORD_NO_FOUND);
	    }
		return view;
	}
	
	@RequestMapping(value="/reveursProducts.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView reveursProducts(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap,String mes,Integer id) {
		ModelAndView view = new ModelAndView(PageConstant.REVEURS_PRODUCTS);
	    try {
	    	
	    	String colums[] = new String[]{"p1","p1name","p1desc","p2","p2name","p2desc","p3","p3name","p3desc","p4","p4name","p4desc"};
	    	List ls = dbServices.myQueryService.getList(MySqlQuery.getCategory(),colums);

	    	modelMap.addAttribute("item",ls);
	    	
	    	
	    	List<Item> item = dbServices.itemService.getList(null,null, new String[]{"name"}, null);
	    	
	    	if(mes != null) {
	    		if(mes.equals(DBConstant.SAVE_SUCESS)) {
	    			modelMap.addAttribute("message",DBConstant.RSS);
	    		} else if(mes.equals(DBConstant.SAVE_FAILURE)) {
	    			modelMap.addAttribute("message",DBConstant.RNS);
	    		} else if(mes.equals(DBConstant.RECORD_NO_FOUND)) {
	    			modelMap.addAttribute("message",DBConstant.RNF);
	    		}
	    	}
	    	modelMap.addAttribute("item",item);

	    }catch (Exception e) {
			view = new ModelAndView(new RedirectView("reveursProducts.html?mes="+DBConstant.RECORD_NO_FOUND));
	    	e.printStackTrace();
//	        view = new ModelAndView("redirect:/product.html?mes="+DBConstant.RECORD_NO_FOUND);
	    }
		return view;
	}
}
