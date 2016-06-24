package com.ravi.commonMethods;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.ravi.MyConstant.DBConstant;
import com.ravi.MyConstant.commonConstant;
import com.ravi.domain.HomeSnap;
import com.ravi.domain.HomeSnapContent;
import com.ravi.dto.UploadFiles;

public class MyMethods {

	public static Boolean equal(Object object,Object obj2) {
		return String.valueOf(object).trim().toLowerCase().equals(String.valueOf(obj2+"").trim().toLowerCase());
	}
	
	public static String setMultipalIds(Object set,Object value) {
		String setValue = "";
		if(set == null || String.valueOf(set+"").isEmpty()) {
			setValue = value+"";
		} else {
			setValue = String.valueOf(set) + "," + String.valueOf(value);
		}
		return setValue;
	}
	
	public static Boolean checkEmpty(Object object[]) {
		Boolean flag = false;
		try {
			for (int i = 0; i < object.length; i++) {
				if(object[i] != null && !object[i].toString().isEmpty()) {
					flag = true;
				} else {
					flag = false;
					break;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public static void copy(InputStream in, File file) {
	    try {
	    	file.createNewFile();
	        OutputStream out = new FileOutputStream(file);
	        byte[] buf = new byte[1024];
	        int len;
	        while((len=in.read(buf))>0){
	            out.write(buf,0,len);
	        }
	        out.close();
	        in.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	public static void setDateInlist(List<Object[]> list,Integer[] pos) {
		try {
			
			Date dt;
			Object[] obj = null;
			String str = "";
			if(pos != null && list != null) {
				for (int i = 0; i < list.size(); i++) {
					try {
						obj = (Object[]) list.get(i);
						for (int j = 0; j < pos.length; j++) {
							str = obj[pos[j]]+"";
							str = str.split("\\.")[0];
							dt = commonConstant.getDateformatter.parse(str);
							obj[pos[j]] = commonConstant.getCalformatter.format(dt);
						}
						list.set(i, obj);
					}catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static List<String> copyFiles(UploadFiles uploadFiles,String sentToPath,Date date) {
		String fileName = "";
		List<String> ufiles = new ArrayList<String>();
		File saveFile;
		String longTime = String.valueOf(date.getTime());
		List<MultipartFile> files = uploadFiles.getFiles();
	    try {
			if(null != files && files.size() > 0) {
				for (int i = 0; i < files.size(); i++) { // Constant -
					if(files.get(i) != null && files.get(i).getOriginalFilename() != null && !files.get(i).getOriginalFilename().isEmpty()) {
						fileName = longTime + "-"+ files.get(i).getOriginalFilename();
						saveFile = new File(sentToPath + fileName);
						copy(files.get(i).getInputStream(), saveFile);
						ufiles.add(fileName);
					}
				}
			}
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return ufiles;
	}
	

	
	
}
