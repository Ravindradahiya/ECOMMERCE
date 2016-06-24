	function triming(ids,messages,nofoundid) {		// nofoundid true : show message this id not found, false : not show message
		var id = ids.split(",");
		var message = messages.split(",");
		for(var i=0;i<id.length;i++) {
			if(document.getElementById(id[i])) {
				var tt = trim(document.getElementById(id[i]).value);
				if(tt=="") {
					if(message[i] != "") {
						alert(message[i]);
						document.getElementById(id[i]).focus();
						return false;
					}
				}
			} else if(nofoundid) {
				alert("This element "+ id[i] + "not found.");
			}
		}
 		return true;
	}

	function trimingZERO(ids,messages,nofoundid) {		// nofoundid true : show message this id not found, false : not show message
		var id = ids.split(",");
		var message = messages.split(",");
		for(var i=0;i<id.length;i++) {
			if(document.getElementById(id[i])) {
				var tt = trim(document.getElementById(id[i]).value);
				if(tt=="" || tt=="0") {
					if(message[i] != "") {
						alert(message[i]);
						document.getElementById(id[i]).focus();
						return false;
					}
				}
			} else if(nofoundid) {
				alert("This element "+ id[i] + "not found.");
			}
		}
		return true;
	}


	function allnumeric(ids,messages,nofoundid) {		// nofoundid true : show message this id not found, false : not show message
		var id = ids.split(",");
		var message = messages.split(",");
		var numbers = /^[0-9]+$/;
		for(var i=0;i<id.length;i++) {
			if(document.getElementById(id[i])) {
				if(!document.getElementById(id[i]).value.match(numbers)) {
						alert(message[i]);
						document.getElementById(id[i]).focus();
						return false;
				}
			} else if(nofoundid) {
				alert("This element "+ id[i] + "not found.");
			}
		}
		return true;
	}

	function allnumericPlusMinus(ids,messages,nofoundid) {		// nofoundid true : show message this id not found, false : not show message
		var id = ids.split(",");
		var message = messages.split(",");
		var numbers = /^[-+]?[0-9]+$/;
		
		for(var i=0;i<id.length;i++) {
			if(document.getElementById(id[i])) {
				if(!document.getElementById(id[i]).value.match(numbers)) {
						alert(message[i]);
						document.getElementById(id[i]).focus();
						return false;
				}
			} else if(nofoundid) {
				alert("This element "+ id[i] + "not found.");
			}
		}
		return true;
	}


 function checkAllBracketClosed(ssn)
 {
 	var len1=0;
 	var len2=0;
 	var t=0;
 	if(ssn.length<=0) return true;
	
	for(t=0;t<ssn.length;t++)
	{
		if(ssn.charAt(t)=='(') len1=len1+1;
		if(ssn.charAt(t)==')') len2=len2+1;		
					
	} 
	if(len1!=len2) return false;
	if(len1==len2) return true;
 }


function checkgreaterDate(startDate,endDate)
{	
	if(checkValidDate(startDate)==false) return false;
	if(checkValidDate(endDate)==false) return false;
	
	var sdate=startDate.split("/");
	var edate=endDate.split("/");
	
	var sm=sdate[0];
	var sd=sdate[1];
	var sy=sdate[2];
	
	var em=edate[0];
	var ed=edate[1];
	var ey=edate[2];
	
	
	var endDate = Date.parse(endDate);
	var startDate = Date.parse(startDate);

	if(startDate > endDate)
	{
		return false;
	}	
	return true;
}

function checkLength(str,len)
{
	if(str.length>0 && str.length<=len)
		return true;
	return false;
	
}

function checkValidDate(str)
{
	var RE_SSN = /^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20|21)\d\d$/
	var sdate=str.split("/");
	var m=sdate[0];
	var d=sdate[1];
	var y=sdate[2];
	
	
	
	
	if (RE_SSN.test(str)) {
		if(d==31)
		{
			if(m==2 || m==4 || m== 6 || m==9 || m==11)
			return false;
		}
		
		if(d>=29)
		{
			if(m==2)
			{
				if(y%4!=0)
				{
					return false;
				}
			}
		}		
	  	return true;
	} else {
	  return false;
	}
}

function checkvalidstring1(ssn)
{
var RE_SSN = /^[a-zA-Z, ]{1,50}$/
 if (RE_SSN.test(ssn)) {
  return true;
 } else {
  return false;
 }
}

function checkdateinbetween(startDate,endDate)
{
	alert("Start date : " + startDate + " End Date :"+ endDate);
}


function checfloatvalue(ssn)
{

var RE_SSN = /^([0-9]{1,20}).([0-9]{1,2})$/
 if (RE_SSN.test(ssn)) 
 	return true; 
 else 
   return checkNumeric(ssn);
}

function checkvalidstring(ssn)
{
var RE_SSN = /^[a-zA-Z ]{1,50}$/
 if (RE_SSN.test(ssn)) {
  return true;
 } else {
  return false;
 }
}

function checkNumberWithOutZero(ids,messages,ifIdNotFound) {
	var id = ids.split(",");
	var message = messages.split(",");
	for(var i=0;i<id.length;i++) {
		if(document.getElementById(id[i])) {
			var s = trim(document.getElementById(id[i]).value);
			if(s == "" || !checkNumeric(s)) {
				document.getElementById(id[i]).focus();
				alert(message[i]);
				return false;
			} 
		} else if(ifIdNotFound){
			alert("Element " + id[i] + " not found.");
			return false;
		}
	}
	return true;
}

function checkNumberWithZero(ids,messages,ifIdNotFound) {
	var id = ids.split(",");
	var message = messages.split(",");
	for(var i=0;i<id.length;i++) {
		if(document.getElementById(id[i])) {
			var s = trim(document.getElementById(id[i]));
			if(s == "" || s== "0" || !checkNumeric(s)) {
				document.getElementById(id[i]).focus();
				alert(message[i]);
				return false;
			} 
		} else if(ifIdNotFound){
			alert("Element " + id[i] + " not found.");
			return false;
		}
	}
	return true;
}

function checkNumeric(ssn)
{
	var RE_SSN = /^[0-9]{1,10}$/
	 if (RE_SSN.test(ssn)) {
	  return true;
	 } else {
	  return false;
	 }
}

function checkContryCode(ssn)
{
	var RE_SSN = /^[0-9+]{1,4}$/
	
	 if (RE_SSN.test(ssn)) {
	  return true;
	 } else {
	  return false;
	 }
}

function checkPhoneNo(ssn)
{
	var RE_SSN = /^[0-9]{1,10}$/
	 if (RE_SSN.test(ssn)) {
	  return true;
	 } else {
	  return false;
	 }
}

function charandnumber(ssn)
{
	var RE_SSN = /^[0-9a-zA-Z. ]{1,400}$/
	 if (RE_SSN.test(ssn)) {
	  return true;
	 } else {
	  return false;
	 }
}



function checkAddressvalidation(ssn)
{
	var RE_SSN = /^[a-zA-Z_ `~@#$&*()_+-=,./<>?{};?\|']{4,50}$/
	 if (RE_SSN.test(ssn)) {
	  return true;
	 } else {
	  return false;
 }
}

function checkEmailvalidation(ssn)
{
var RE_SSN = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
 if (RE_SSN.test(ssn)) {
  return true;
 } else {
  return false;
 }
}

function checklength(str,min,max)
{
	if(str.length >=min && str.length <= max)
	{
		
		return true;
	}
	return false;
	
}



function trim(s)
{
	return rtrim(ltrim(s));
}



function ltrim(s)
{
	var l=0;
	while(l < s.length && s[l] == ' ')
	{	l++; }
	return s.substring(l, s.length);
}

function rtrim(s)
{
	var r=s.length -1;
	while(r > 0 && s[r] == ' ')
	{	r-=1;	}
	return s.substring(0, r+1);
}

function checkempty(str)
{
	if(trim(str)=='') 
		return false;
	else
	return true; 
}

function setValue(set,value) {
	if(set == "") {
		set = value;
	} else {
		set += "," + value; 
	}
	return set;
}