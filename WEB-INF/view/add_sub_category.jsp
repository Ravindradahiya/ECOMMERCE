<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page import="com.ravi.MyConstant.commonConstant"%>
<html> 
<head> 
    <script type="text/javascript">
    	function change(val) {
    		if(val == 0 ) { 
    			alert("Please select Parent Category.");
    		}
    	}
    	
		function submitForm() {
			if(document.getElementById("parentCatId").value == 0) {
				alert("Please select Parent category");
				return;
			}

			if(document.getElementById("name").value == "") {
				alert("Please enter sub category name. ");
				return;
			}
			
			document.forms["myForm"].action = "saveCategoryInfo.html";
			document.forms["myForm"].submit();
		}
		<c:if test="${message ne null and ! empty message }">alert("${message}")</c:if>
    </script>
    
</head>
	<body style="margin:0;padding:0; background:#fff; font-family: Arial, Verdana, Sans-Serif;"> 
		<form:form name="myForm" enctype="multipart/form-data" modelAttribute="homeform" >
		<table width="100%">
			<tr>
				<td colspan="1">Category Name</td>
				<td colspan="3">
					<select id="parentCatId" name="parentCatId" onchange="change(this.value)">
						<option value="0" >Select</option>
						<c:forEach items="${cat}" var="c" >
							<option value="${c.id}" >
							<img style="height: 10px; width: 10px;" src="<c:out value='${pageContext.servletContext.contextPath}'/>/<%= commonConstant.categoryPageSnap %>${c.image}"  />
							 ${c.name}
							</option>
						</c:forEach>
					</select>
				</td>
			</tr>
	
			<tr>
				<td colspan="1">Sub Category Name</td>
				<td colspan="3"><input type="text" id="name" name="name"/></td>
			</tr>
			<tr>
				<td colspan="1">Description</td>
				<td colspan="3"><input type="text" id="description" name="description"/></td>
			</tr>
			<tr ><td colspan="1">Select Image</td>
				<td colspan="1"><input type="file" id="files[0]" name="files[0]"/></td>
			</tr>
			
		</table>
	       	
		</form:form>
       	<input type="button" name="submit" id="submit" value="submit" onclick="submitForm()">
	</body> 
</html>

