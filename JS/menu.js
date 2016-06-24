
function findPosX(obj) {
  var curleft = 0;

  if(obj.offsetParent) {
    while(1) {
      curleft += obj.offsetLeft;
      if(!obj.offsetParent)
        break;
      obj = obj.offsetParent;
    }
  } else if(obj.x) {
    curleft += obj.x;
  }

  obj.style.position = "static";

  return curleft;
}

function findPosY(obj) {
  var curtop = 0;

  if(obj.offsetParent) {
    while(1) {
      curtop += obj.offsetTop;
      if(!obj.offsetParent)
        break;
      obj = obj.offsetParent;
    }
  } else if(obj.y) {
    curtop += obj.y;
  }

  return curtop;
}


function findPosition(obj) {
 var obj2 = obj;
 var curtop = 0;
 var curleft = 0;
 if (document.getElementById || document.all) {
  do  {
   curleft += obj.offsetLeft-obj.scrollLeft;
   curtop += obj.offsetTop-obj.scrollTop;
   obj = obj.offsetParent;
   obj2 = obj2.parentNode;
   while (obj2!=obj) {
    curleft -= obj2.scrollLeft;
    curtop -= obj2.scrollTop;
    obj2 = obj2.parentNode;
   }
  } while (obj.offsetParent)
 } else if (document.layers) {
  curtop += obj.y;
  curleft += obj.x;
 }
 return [curtop, curleft];
}   // end of findPos()


function findPos(obj) {
  var left = findPosX(obj);
  var top = findPosY(obj);

  return [left , top];
}

function findPosition( oElement ) {
  if( typeof( oElement.offsetParent ) != 'undefined' ) {
    for( var posX = 0, posY = 0; oElement; oElement = oElement.offsetParent ) {
      posX += oElement.offsetLeft;
      posY += oElement.offsetTop;
    }
    
    
    
    return [ posX, posY ];
  } else {
    return [ oElement.x, oElement.y ];
  }
}    
    
    
    
    function hideALL()	// hide all div
    {
    	document.getElementById("menuSubA").style.display = "none";
    	document.getElementById("menuSubB").style.display = "none";
//    	document.getElementById("").style.display = "none";
//    	document.getElementById("").style.display = "none";
    }
    
    function hideSubMenuA(Did)
    {
    	menuSubA.style.height
    	id=document.getElementById(Did);
    	id.style.display = "none";

    }
    function showmenuSubA(Did)
    {
    	hideALL();    
    	id=document.getElementById(Did);
    	id.style.display = "block";

    }
    
    function showmenuSubB(Did,DidForLeft)
    {
    	hideALL();
    	var dIdL = document.getElementById(DidForLeft);    
    	id=document.getElementById(Did);    	
		id.style.position = "absolute";    	
    	id.style.display = "block";
//    	alert(dIdL.style.left);
    	id.style.left  = "250px";
//    	alert(dIdL.style.left);
		
    }

    function tryit(id)
    {
    	ddd=document.getElementById(id);
    	alert(" b poistion "  + findPosY(ddd)  );
    	
    	var myalert = "";
    	myalert = myalert +  "\n aaabbb.offsetHeight " +  ddd.offsetHeight;	
    	myalert = myalert +  "\n aaabbb.offsetLeft " + ddd.offsetLeft;
		myalert = myalert +  "\n aaabbb.offsetParent " + ddd.offsetParent;
		myalert = myalert +  "\n aaabbb.offsetTop " + ddd.offsetTop	;
		myalert = myalert +  "\n aaabbb.offsetWidth " + ddd.offsetWidth;
		myalert = myalert +  "\n aaabbb.offsetWidth " + ddd.offsetWidth;
		
		
		myalert = myalert +  "\n aaabbb.scopeName " +  ddd.scopeName;	
    	myalert = myalert +  "\n aaabbb.scrollHeight " + ddd.scrollHeight;
		myalert = myalert +  "\n aaabbb.scrollLeft " + ddd.scrollLeft;
		myalert = myalert +  "\n aaabbb.scrollTop " + ddd.scrollTop	;
		myalert = myalert +  "\n aaabbb.scrollWidth " + ddd.scrollWidth;
		myalert = myalert +  "\n aaabbb.scrollTop " + ddd.scrollTop;
		
		ddd.style.position = "absolute";
		ddd.style.left = "250px";
		ddd.style.top = "0px";
		
		alert(myalert + "  and " + ddd.style.left);     	
//		alert(" pos " + findPosition(ddd));

    
    }

