package com.ravi.commonMethods;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.ui.ModelMap;

import com.ravi.MyConstant.DBConstant;
import com.ravi.dbService.DbServices;
import com.ravi.dto.SessionDTO;

public class CommonMethod {

	DbServices dbServices;
	
	public CommonMethod() {
		super();
	}

	public CommonMethod (DbServices dbServices) {
		this.dbServices = dbServices;
	}
	
	
	public void setOnMap(final HttpServletRequest request,ModelMap map) {
		try {
			SessionDTO sessionDTO = (SessionDTO) request.getSession().getServletContext().getAttribute("rajnishSession");
			map.addAttribute("userName", sessionDTO.getName());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
