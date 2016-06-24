//DROP TABLE IF EXISTS `rajnish`.`item`;
//CREATE TABLE  `rajnish`.`item` (
//  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
//  `category` int(10) unsigned DEFAULT NULL,
//  `brand` varchar(150) DEFAULT NULL,
//  `launch` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'new or old',
//  `color` varchar(45) DEFAULT NULL,
//  `size` varchar(45) DEFAULT NULL,
//  `group_no` int(10) unsigned DEFAULT '0' COMMENT 'If found some other',
//  `quantity` int(10) unsigned DEFAULT '0' COMMENT 'over all stock starting',
//  `stock` int(10) unsigned DEFAULT '0' COMMENT 'remain stock',
//  `rating` int(10) unsigned DEFAULT NULL,
//  `weigth` varchar(45) DEFAULT NULL,
//  `image_1` varchar(250) DEFAULT NULL,
//  `image_2` varchar(250) DEFAULT NULL,
//  `image_3` varchar(250) DEFAULT NULL,
//  `description` varchar(250) DEFAULT NULL,
//  `name` varchar(100) DEFAULT NULL,
//  `status` int(10) unsigned DEFAULT '1',
//  `created_on` datetime DEFAULT NULL,
//  `modified_on` datetime DEFAULT NULL,
//  `created_by` int(10) unsigned DEFAULT NULL,
//  `modified_by` int(10) unsigned DEFAULT NULL,
//  PRIMARY KEY (`id`)
//) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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

import org.hibernate.annotations.Formula;

import com.ravi.MyConstant.DomainConstant;

@Entity
@Table(name=DomainConstant.Item.TABLE_NAME)
public class Item implements Serializable{
	
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
	
	@Column(name=DomainConstant.Item.CATEGORY) 
	public Integer category;

	@Column(name=DomainConstant.Item.BRAND) 
	public String brand;

	@Column(name=DomainConstant.Item.LAUNCH ) 
	public Boolean launch;

	@Column(name=DomainConstant.Item.COLOR) 
	public String color;

	@Column(name=DomainConstant.Item.SIZE) 
	public String size;

	@Column(name=DomainConstant.Item.GROUP_NO) 
	public Integer group_no;
	
	@Column(name=DomainConstant.Item.QUANTITY) 
	public Integer quantity;
	
	@Column(name=DomainConstant.Item.STOCK) 
	public Integer stock;
	
	@Column(name=DomainConstant.Item.RATING) 
	public Integer rating;
	
	@Column(name=DomainConstant.Item.WEIGTH) 
	public String weigth;
	
	@Column(name=DomainConstant.Item.IMAGEA) 
	public String imageA ;
	
	@Column(name=DomainConstant.Item.IMAGEB) 
	public String imageB;
	
	@Column(name=DomainConstant.Item.IMAGEC) 
	public String imageC;
	
	@Column(name=DomainConstant.Item.NAME) 
	public String name;
	
	@Column(name=DomainConstant.Item.DESCRIPTION) 
	public String description;

	@Formula(value=DomainConstant.Item.CAT_NAME) 
	public String categoryName;

	@Formula(value=DomainConstant.Item.CAT_IMAGE) 
	public String categoryImage;

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

	public Integer getCategory() {
		return category;
	}

	public void setCategory(Integer category) {
		this.category = category;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public Boolean getLaunch() {
		return launch;
	}

	public void setLaunch(Boolean launch) {
		this.launch = launch;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public Integer getGroup_no() {
		return group_no;
	}

	public void setGroup_no(Integer group_no) {
		this.group_no = group_no;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}

	public Integer getRating() {
		return rating;
	}

	public void setRating(Integer rating) {
		this.rating = rating;
	}

	public String getWeigth() {
		return weigth;
	}

	public void setWeigth(String weigth) {
		this.weigth = weigth;
	}

	public String getImageA() {
		return imageA;
	}

	public void setImageA(String imageA) {
		this.imageA = imageA;
	}

	public String getImageB() {
		return imageB;
	}

	public void setImageB(String imageB) {
		this.imageB = imageB;
	}

	public String getImageC() {
		return imageC;
	}

	public void setImageC(String imageC) {
		this.imageC = imageC;
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

	public Item() {
		super();
	}

	public Item(Integer id, Integer status, Date createdOn, Date modifiedOn,
			Integer createdBy, Integer modifiedBy, Integer category,
			String brand, Boolean launch, String color, String size,
			Integer group_no, Integer quantity, Integer stock, Integer rating,
			String weigth, String imageA, String imageB, String imageC,
			String name, String description) {
		super();
		this.id = id;
		this.status = status;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
		this.createdBy = createdBy;
		this.modifiedBy = modifiedBy;
		this.category = category;
		this.brand = brand;
		this.launch = launch;
		this.color = color;
		this.size = size;
		this.group_no = group_no;
		this.quantity = quantity;
		this.stock = stock;
		this.rating = rating;
		this.weigth = weigth;
		this.imageA = imageA;
		this.imageB = imageB;
		this.imageC = imageC;
		this.name = name;
		this.description = description;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryImage() {
		return categoryImage;
	}

	public void setCategoryImage(String categoryImage) {
		this.categoryImage = categoryImage;
	}

	
}
