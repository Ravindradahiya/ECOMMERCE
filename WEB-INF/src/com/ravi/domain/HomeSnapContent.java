package com.ravi.domain;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.ravi.MyConstant.DomainConstant;

@Entity
@Table(name=DomainConstant.HomeSnapContent.TABLE_NAME)
public class HomeSnapContent implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name=DomainConstant.CommonFields.ID)
	private Integer id;
	
	@Column(name=DomainConstant.HomeSnapContent.SNAP_ID)
	public Integer snap_id;
	
	@Column(name=DomainConstant.HomeSnapContent.CONTENT)
	public String content;

	@Column(name=DomainConstant.HomeSnapContent.SLIDER_NAME)
	public String sliderName;

	@Column(name=DomainConstant.CommonFields.STATUS)
	public Integer status;

	@Column(name=DomainConstant.HomeSnapContent.LEFT) 
	public String left;

	@Column(name=DomainConstant.HomeSnapContent.TOP) 
	public String top;

	@Column(name=DomainConstant.HomeSnapContent.WIDTH) 
	public String width;
	
	@Column(name=DomainConstant.HomeSnapContent.HEIGHT) 
	public String height;

	public HomeSnapContent(Integer id, Integer snap_id, String content,String sliderName,Integer status,String top,String left,String height,String width) {
		super();
		this.id = id;
		this.snap_id = snap_id;
		this.content = content;
		this.sliderName = sliderName;
		this.status = status;
		this.left = left == null ? "20" : left+"";
		this.width = width == null ? "20" : width+"";
		this.height = height == null ? "20" : height+"";
		this.top = top == null ? "20" : top+"";
	}

	public HomeSnapContent() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getSnap_id() {
		return snap_id;
	}

	public void setSnap_id(Integer snap_id) {
		this.snap_id = snap_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getSliderName() {
		return sliderName;
	}

	public void setSliderName(String sliderName) {
		this.sliderName = sliderName;
	}

	public String getLeft() {
		return left;
	}

	public void setLeft(String left) {
		this.left = left;
	}

	public String getTop() {
		return top;
	}

	public void setTop(String top) {
		this.top = top;
	}

	public String getWidth() {
		return width;
	}

	public void setWidth(String width) {
		this.width = width;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}
}
