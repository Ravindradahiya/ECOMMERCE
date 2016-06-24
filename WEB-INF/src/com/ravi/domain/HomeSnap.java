package com.ravi.domain;


import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.ravi.MyConstant.DomainConstant;

@Entity
@Table(name=DomainConstant.HomeSnap.TABLE_NAME)
public class HomeSnap implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name=DomainConstant.CommonFields.ID)
	private Integer id;
	
	@Column(name=DomainConstant.CommonFields.STATUS)
	public Integer status;
	
	@Column(name=DomainConstant.CommonFields.CREATED_ON)
	public Date createdOn;
	
	@Column(name=DomainConstant.CommonFields.MODIFIED_ON)
	public Date modifiedOn;
	
	@Column(name=DomainConstant.CommonFields.CREATED_BY)
	public Integer createdBy;
	
	@Column(name=DomainConstant.CommonFields.MODIFIED_BY)
	public Integer modifiedBy;
	
	@Column(name=DomainConstant.HomeSnap.SNAP) 
	public String snap;
	
	@Transient
	public List<HomeSnapContent> constant;

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

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public Date getModifiedOn() {
		return modifiedOn;
	}

	public void setModifiedOn(Date modifiedOn) {
		this.modifiedOn = modifiedOn;
	}

	public Integer getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}

	public Integer getModifiedBy() {
		return modifiedBy;
	}

	public void setModifiedBy(Integer modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public String getSnap() {
		return snap;
	}

	public void setSnap(String snap) {
		this.snap = snap;
	}

	public HomeSnap() {
		super();
	}

	public HomeSnap(Integer id, Integer status, Date createdOn,
			Date modifiedOn, Integer createdBy, Integer modifiedBy, String snap) {
		super();
		this.id = id;
		this.status = status;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
		this.createdBy = createdBy;
		this.modifiedBy = modifiedBy;
		this.snap = snap;
	}

	public List<HomeSnapContent> getConstant() {
		return constant;
	}

	public void setConstant(List<HomeSnapContent> constant) {
		this.constant = constant;
	}

}
