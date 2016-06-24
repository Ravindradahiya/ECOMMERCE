function validateSameSequence(ids,messages,nofoundid,sequence) {
	var id = ids.split(",");
	var message = messages.split(",");
	
	for(var i=0;i<id.length;i++) {
		if(document.getElementById(id[i])) {
		  var obj = document.getElementById(id[i]);
		  var optionData = new Array();
		  for(var j=0;j < obj.length;j++) {
		  	if(obj.options[j].text.split(' : ')[0] == sequence) {
		  		alert(message[i]);
		  		obj.focus();
		  		return false;
		  	}
		  }
		
		} else if(nofoundid) {
			alert("This element "+ id[i] + "not found.");
		}
	}
	return true;
}

function sortedOrder(selectID) {
  var obj = document.getElementById(selectID);
  var optionData = new Array();
  for(var i=0;i < obj.length;i++) {
	optionData[i] = new Array();
  	optionData[i][0] = parseInt(obj.options[i].text.split(' : ')[0]);	// Sequence
  	optionData[i][1] = obj.options[i].value;	// value
  	optionData[i][2] = obj.options[i].text;		// display
  }
  
  optionData.sort();
  
  removeAllOption(selectID,'',false);
  
  for(var i=0;i < optionData.length;i++) {	// add again to select
		  obj.options[obj.options.length] = new Option(optionData[i][2], optionData[i][1]);
  }
}


function removeAllOption(id)
{
	var x=document.getElementById(id);
	x.remove(x.selectedIndex);
}


function addOption(selectID, display, value)
{
  var obj = document.getElementById(selectID);
  obj.options[obj.options.length] = new Option(display, value);
}


function getOptionText(id) {
	var obj = document.getElementById(id);
	if(obj) {
		return obj.options[obj.selectedIndex].text;
	} else {
		return false;
	}
}

function getOptionValue(id) {
	var obj = document.getElementById(id);
	if(obj) {
		return obj.value;
	} else {
		return false;
	}
}

function removeOption(ids,messages,nofoundid) {		// nofoundid true : show message this id not found, false : not show message
	var id = ids.split(",");
	var message = messages.split(",");
	
	for(var i=0;i<id.length;i++) {
		if(document.getElementById(id[i])) {
			if(document.getElementById(id[i]).selectedIndex > -1) {
				document.getElementById(id[i]).remove(document.getElementById(id[i]).selectedIndex);
				document.getElementById(id[i]).focus();
			} else {
				document.getElementById(id[i]).focus();
				alert(message[i]);
				return false;
			}
		} else if(nofoundid) {
			alert("This element "+ id[i] + "not found.");
		}
	}
	return true;
}

function removeAllOption(ids,messages,nofoundid) {		// nofoundid true : show message this id not found, false : not show message
	var id = ids.split(",");
	var message = messages.split(",");
	
	for(var i=0;i<id.length;i++) {
		if(document.getElementById(id[i])) {
			for(var j=document.getElementById(id[i]).length-1;j>=0;j--) {
				document.getElementById(id[i]).remove(j);
			}
		} else if(nofoundid) {
			alert("This element "+ id[i] + "not found.");
		}
	}
	return true;
}


function selectedValue(id,message,nofoundid) {
	if(document.getElementById(id)) {
		if(document.getElementById(id).value == 0) {
			alert(message);
			document.getElementById(id).focus();
			return false;
		} else {
			return document.getElementById(id).value;
		}
	} else if(nofoundid) {
		alert("This element "+ id[i] + "not found.");
		return false;
	}
}

function remOpt(id) {
	var x=document.getElementById(id);
	x.remove(x.selectedIndex);
}

function getAllSelectValues(id,seprator) {
  var obj = document.getElementById(id);
  var allValue="";
  for(var i=0;i < obj.length;i++) {
  	if(allValue=="") {
  		allValue = obj.options[i].value;
  	} else {
  		allValue = allValue + seprator + obj.options[i].value;
  	}
  }
  return allValue;
}