package com.ravi.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ravi.MyConstant.DBConstant;
import com.ravi.MyConstant.PageConstant;
import com.ravi.commonMethods.CommonMethod;
import com.ravi.commonMethods.MyMethods;
import com.ravi.commonMethods.MySqlQuery;
import com.ravi.dbService.DbServices;
import com.ravi.domain.Contacts;
import com.ravi.domain.HomeSnap;
import com.ravi.domain.HomeSnapContent;
import com.ravi.dto.SessionDTO;

@Controller
public class LoginController {

	@Autowired
	private DbServices dbServices;
	
	@RequestMapping(value="/home.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView home(HttpServletRequest request,HttpServletResponse response,ModelMap map) {
		try {
			CommonMethod commonMethod = new CommonMethod(dbServices);
			commonMethod.setOnMap(request,map);
			
			List<HomeSnap> hs=dbServices.getHomeSnapService().getList(Restrictions.eq("status", DBConstant.STATUS_ACTIVE),null,null,null);
			List<Object> obj = new ArrayList<Object>();
			for (int i = 0; i < hs.size(); i++) {
				obj.add(hs.get(i).getId());
			}
			List<HomeSnapContent> hsc = dbServices.getHomeSnapContentService().getList(Restrictions.in("snap_id", obj),null,null,null);
			if(!hsc.isEmpty()) {
				List<HomeSnapContent> hss = new ArrayList<HomeSnapContent>();
				for (int i = 0; i < hs.size(); i++) {
					hss = new ArrayList<HomeSnapContent>();
					for (int j = 0; j < hsc.size(); j++) {
						if(hsc.get(j).getSnap_id().toString().equals(hs.get(i).getId().toString())) {
							hss.add(hsc.get(j));
							hsc.remove(j);
							j--;
						}
					}
					hs.get(i).setConstant(hss);
				}
			}
			
			map.addAttribute("snaps", hs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView(PageConstant.HOME);
	}

	@RequestMapping(value="/login.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView login(HttpServletRequest request,HttpServletResponse response,ModelMap map,final String loginId,String passwords) {
		try {
			
			List<Contacts> contacts = dbServices.getContactService().getList(Restrictions.and(Restrictions.eq("loginID", loginId),
					Restrictions.eq("password", passwords)),null, null, null);
			
			if(contacts != null && !contacts.isEmpty()) {
				SessionDTO sessionDTO = new SessionDTO(contacts.get(0).getId(),contacts.get(0).getFirstName() +  " " + contacts.get(0).getLastName(),contacts.get(0).getEmailId());
				request.getSession().getServletContext().setAttribute("rajnishSession", sessionDTO);
			}
			response.sendRedirect("home.html");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView(PageConstant.HOME);
	}
	
	@RequestMapping(value="/signup.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView registration(HttpServletRequest request,HttpServletResponse response,ModelMap map,final String username,String email,String password) {
		try {
			String message = "0";
			if(MyMethods.checkEmpty(new Object[]{username,email,password}) ) {
				List list = dbServices.getMyQueryService().getList(MySqlQuery.getSameEmail(email), new String[]{"emailid"});
				if(list != null && list.size() > 0) {
					message = "2";
				} else{
					Contacts contacts = new Contacts(null,DBConstant.STATUS_ACTIVE,new Date(),null,0,null,username,"","","","","","","","","","","","","",email,"",email,password);
					dbServices.contactService.saveOrUpdate(contacts);
					SessionDTO sessionDTO = new SessionDTO(contacts.getId(),contacts.getFirstName() +  " " + contacts.getLastName(),contacts.getEmailId());
					request.getSession().getServletContext().setAttribute("rajnishSession", sessionDTO);
					message = "1";
				}
			}
			response.sendRedirect("home.html?m="+message);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView(PageConstant.HOME);
	}
	
	@RequestMapping(value = "/signout.html", method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView signoutHR(HttpServletRequest request,final HttpServletResponse response) {
		try {
		request.getSession().getServletContext().removeAttribute("rajnishSession");
		request.getSession().invalidate();
		response.sendRedirect("home.html");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView(PageConstant.HOME);
	} 
}
