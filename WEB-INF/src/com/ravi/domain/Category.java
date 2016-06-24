package com.ravi.domain;
import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Formula;

import com.ravi.MyConstant.DomainConstant;

@Entity
@Table(name=DomainConstant.Category.TABLE_NAME)
public class Category implements Serializable{
	
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
	
	@Column(name=DomainConstant.Category.NAME) 
	public String name;
	
	@Column(name=DomainConstant.Category.DESCRIPTION) 
	public String description;
	
	@Column(name=DomainConstant.Category.IMAGE) 
	public String image;
	
	@Column(name=DomainConstant.Category.PARENT_CAT_ID) 
	public Integer parentCatId;

	@Formula(value=DomainConstant.Category.PARENT_CAT_NAME) 
	public String parentCatName;

	@Formula(value=DomainConstant.Category.PARENT_CAT_IMAGE) 
	public String parentCatImage;

	public Category() {
		super();
	}

	public Category(Integer id, Integer status, Date createdOn,
			Date modifiedOn, Integer createdBy, Integer modifiedBy,
			String name, String description, String image, Integer parentCatId) {
		super();
		this.id = id;
		this.status = status;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
		this.createdBy = createdBy;
		this.modifiedBy = modifiedBy;
		this.name = name;
		this.description = description;
		this.image = image;
		this.parentCatId = parentCatId;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getParentCatId() {
		return parentCatId;
	}

	public void setParentCatId(Integer parentCatId) {
		this.parentCatId = parentCatId;
	}

	public String getParentCatName() {
		return parentCatName;
	}

	public void setParentCatName(String parentCatName) {
		this.parentCatName = parentCatName;
	}

	public String getParentCatImage() {
		return parentCatImage;
	}

	public void setParentCatImage(String parentCatImage) {
		this.parentCatImage = parentCatImage;
	}

}