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
@Table(name=DomainConstant.Contacts.TABLE_NAME)
public class Contacts implements Serializable{
	
	/**
	 * 
	 */
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
	
	@Column(name=DomainConstant.Contacts.FIRST_NAME)
	public String firstName;
	
	@Column(name=DomainConstant.Contacts.LAST_NAME)
	public String lastName;
	
	@Column(name=DomainConstant.Contacts.DOB)
	public String dob;
	
	@Column(name=DomainConstant.Contacts.GENDER)
	public String gender;
	
	@Column(name=DomainConstant.Contacts.ADDRESS)
	public String address;
	
	@Column(name=DomainConstant.Contacts.CITY)
	public String city;
	
	@Column(name=DomainConstant.Contacts.STATE)
	public String state;
	
	@Column(name=DomainConstant.Contacts.PINCODE)
	public String pinCode;
	
	@Column(name=DomainConstant.Contacts.COUNTRY)
	public String country;
	
	@Column(name=DomainConstant.Contacts.REGION)
	public String region;
	
	@Column(name=DomainConstant.Contacts.STD_CODE)
	public String stdCode;
	
	@Column(name=DomainConstant.Contacts.TELEPHONE_NUMBER)
	public String telephoneNumber;
	
	@Column(name=DomainConstant.Contacts.MOBILE)
	public String mobile;
	
	@Column(name=DomainConstant.Contacts.MOBILE2)
	public String mobile_2;
	
	@Column(name=DomainConstant.Contacts.EMAIL_ID)
	public String emailId;
	
	public Contacts() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Column(name=DomainConstant.Contacts.REFERED_BY)
	public String refered_by;

	@Column(name=DomainConstant.Contacts.LOGIN_ID)
	public String  loginID;

	@Column(name=DomainConstant.Contacts.PASSWORD)
	public String  password;

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

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getStdCode() {
		return stdCode;
	}

	public void setStdCode(String stdCode) {
		this.stdCode = stdCode;
	}

	public String getTelephoneNumber() {
		return telephoneNumber;
	}

	public void setTelephoneNumber(String telephoneNumber) {
		this.telephoneNumber = telephoneNumber;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getMobile_2() {
		return mobile_2;
	}

	public void setMobile_2(String mobile_2) {
		this.mobile_2 = mobile_2;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getRefered_by() {
		return refered_by;
	}

	public void setRefered_by(String refered_by) {
		this.refered_by = refered_by;
	}

	public String getLoginID() {
		return loginID;
	}

	public void setLoginID(String loginID) {
		this.loginID = loginID;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Contacts(Integer id, Integer status, Date createdOn,
			Date modifiedOn, Integer createdBy, Integer modifiedBy,
			String firstName, String lastName, String dob, String gender,
			String address, String city, String state, String pinCode,
			String country, String region, String stdCode,
			String telephoneNumber, String mobile, String mobile_2,
			String emailId, String refered_by, String loginID, String password) {
		super();
		this.id = id;
		this.status = status;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
		this.createdBy = createdBy;
		this.modifiedBy = modifiedBy;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.gender = gender;
		this.address = address;
		this.city = city;
		this.state = state;
		this.pinCode = pinCode;
		this.country = country;
		this.region = region;
		this.stdCode = stdCode;
		this.telephoneNumber = telephoneNumber;
		this.mobile = mobile;
		this.mobile_2 = mobile_2;
		this.emailId = emailId;
		this.refered_by = refered_by;
		this.loginID = loginID;
		this.password = password;
	}

}
