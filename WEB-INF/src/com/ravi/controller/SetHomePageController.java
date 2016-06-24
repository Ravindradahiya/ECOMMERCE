package com.ravi.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ravi.MyConstant.DBConstant;
import com.ravi.MyConstant.PageConstant;
import com.ravi.MyConstant.commonConstant;
import com.ravi.commonMethods.CommonMethod;
import com.ravi.commonMethods.MyMethods;
import com.ravi.dbService.DbServices;
import com.ravi.domain.HomeSnap;
import com.ravi.domain.HomeSnapContent;
import com.ravi.dto.SessionDTO;
import com.ravi.dto.UploadFiles;

@Controller
public class SetHomePageController {

	@Autowired
	private DbServices dbServices;
	
	@RequestMapping(value="/setHomePage.html",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView setHomePage(HttpServletRequest request,HttpServletResponse response,ModelMap map,final String message) {
		try {
			String ss = "L,R,T,B,TR,L|IB,R|IB,T|IB,CLIP|LR,CLIP|TB,CLIP|L,MCLIP|R,MCLIP|T,WV|B,TORTUOUS|VB,LISTH|R,RTT|360,RTT|10";
			ss = ss + ",RTTL|BR,T|IE*IE,RTTS|R,RTTS|T,DDGDANCE|RB,ZMF|10,DDG|TR,FLTTR|R,FLTTRWN|LT,ATTACK|BR,FADE";
			String []style =  ss.split(",");
			
			map.addAttribute("style",style);
			CommonMethod commonMethod = new CommonMethod(dbServices);
			commonMethod.setOnMap(request,map);
			if(message != null && !message.isEmpty()) {
				map.addAttribute("message", message.equals("0") ? "Record not saved successfully. Please try again." : "Record save successfully.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView(PageConstant.SET_HOME_PAGE);
	}
	
	@RequestMapping(value = "/saveHomePage.html", method={RequestMethod.GET,RequestMethod.POST})
	public void saveHomePage(final HttpServletResponse response,final HttpServletRequest request,final ModelMap map,
			@ModelAttribute("homeform") UploadFiles uploadFiles) {   
		
		try {
			CommonMethod commonMethod = new CommonMethod(dbServices);
			commonMethod.setOnMap(request,map);
			
			Integer userId = ((SessionDTO) request.getSession().getServletContext().getAttribute("rajnishSession")).getId();
			Date date = new Date();
			String fileName = "";
			File saveFile;
			String longTime = String.valueOf(date.getTime());
			List<MultipartFile> files = uploadFiles.getFiles();
			if(null != files && files.size() > 0) {
				for (int i = 0; i < files.size(); i++) { // Constant -
					if(files.get(i) != null && files.get(i).getOriginalFilename() != null && !files.get(i).getOriginalFilename().isEmpty()) {
								fileName = longTime + "-"+ files.get(i).getOriginalFilename();
								saveFile = new File(request.getRealPath("/")+ commonConstant.homePageSnap + fileName);
								MyMethods.copy(files.get(i).getInputStream(), saveFile);
								HomeSnap homeSnap = new HomeSnap(null,DBConstant.STATUS_ACTIVE,new Date(),null,userId,null,fileName);
								dbServices.homeSnapService.saveOrUpdate(homeSnap);
								HomeSnapContent homesnapcontent = new HomeSnapContent(null,homeSnap.getId(),uploadFiles.getContent().get(i),uploadFiles.getSlides().get(i),
										DBConstant.STATUS_ACTIVE,uploadFiles.getTop().get(i),uploadFiles.getLeft().get(i),uploadFiles.getHeight().get(i),uploadFiles.getWidth().get(i));
								dbServices.homeSnapContentService.saveOrUpdate(homesnapcontent);
					}
				}
				response.sendRedirect("setHomePage.html?message=1");
			} else {
				response.sendRedirect("setHomePage.html?message=0");
			}
		} catch (Exception e) {
			e.printStackTrace();
			try {
				response.sendRedirect("setHomePage.html?message=0");
			}catch (Exception ee) {
				ee.printStackTrace();
			}
		}
	} 

	
	
	@RequestMapping(value = "/applyPhotoChanges", method=RequestMethod.POST)
	public String applyPhotoChanges(HttpServletRequest request,@ModelAttribute("editPhoto") UploadFiles photo,ModelMap modelMap) {

	    MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
	    MultipartFile file = multipartRequest.getFile("fileContent");

	    try {
	    	
	    }catch (Exception e) {
	        throw new RuntimeException(e);

	    }
	    return "person/editPhotoResults";
	}
	

}
