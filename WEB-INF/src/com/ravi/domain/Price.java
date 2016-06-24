package com.ravi.domain;


import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.ravi.MyConstant.DomainConstant;

@Entity
@Table(name=DomainConstant.Price.TABLE_NAME)
public class Price implements Serializable{
	
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
	
	@Column(name=DomainConstant.Price.HOLE_SALE_PRICE) 
	public Integer holeSalePrice;
	
	@Column(name=DomainConstant.Price.RETAIL_PRICE) 
	public Integer retailPrice;
	
	@Column(name=DomainConstant.Price.DISCOUNT) 
	public Integer discount;
	
	@Column(name=DomainConstant.Price.SALE_PRICE) 
	public Integer salePrice;
	
	@Column(name=DomainConstant.Price.DIS_START_FROM) 
	public Date disStartFrom;
	
	@Column(name=DomainConstant.Price.DIS_END_DATE) 
	public Date disEndDate;

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

	public Integer getHoleSalePrice() {
		return holeSalePrice;
	}

	public void setHoleSalePrice(Integer holeSalePrice) {
		this.holeSalePrice = holeSalePrice;
	}

	public Integer getRetailPrice() {
		return retailPrice;
	}

	public void setRetailPrice(Integer retailPrice) {
		this.retailPrice = retailPrice;
	}

	public Integer getDiscount() {
		return discount;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

	public Integer getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(Integer salePrice) {
		this.salePrice = salePrice;
	}

	public Date getDisStartFrom() {
		return disStartFrom;
	}

	public void setDisStartFrom(Date disStartFrom) {
		this.disStartFrom = disStartFrom;
	}

	public Date getDisEndDate() {
		return disEndDate;
	}

	public void setDisEndDate(Date disEndDate) {
		this.disEndDate = disEndDate;
	}

	public Price(Integer id, Integer status, Date createdOn, Date modifiedOn,
			Integer createdBy, Integer modifiedBy, Integer holeSalePrice,
			Integer retailPrice, Integer discount, Integer salePrice,
			Date disStartFrom, Date disEndDate) {
		super();
		this.id = id;
		this.status = status;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
		this.createdBy = createdBy;
		this.modifiedBy = modifiedBy;
		this.holeSalePrice = holeSalePrice;
		this.retailPrice = retailPrice;
		this.discount = discount;
		this.salePrice = salePrice;
		this.disStartFrom = disStartFrom;
		this.disEndDate = disEndDate;
	}

	public Price() {
		super();
	}
	

	
}
