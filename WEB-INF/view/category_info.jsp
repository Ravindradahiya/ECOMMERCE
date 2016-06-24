<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page import="com.ravi.MyConstant.commonConstant"%>
<html> 
<head> 
    
    <script type="text/javascript">
		function submitForm() {
			document.forms["myForm"].action = "saveHomePage.html";
			document.forms["myForm"].submit();
		}
		<c:if test="${message ne null and ! empty message }">alert("${message}")</c:if>
    </script>
    
</head>
	<body style="margin:0;padding:0; background:#fff; font-family: Arial, Verdana, Sans-Serif;"> 
		<form:form name="myForm" enctype="multipart/form-data" modelAttribute="homeform" >
		<table width="100%" border="0">
			<tr>
				<td colspan="1">Category Name</td>
				<td colspan="3">
				${cat.name}
				</td>
			</tr>
			<tr>
				<td colspan="1">Description</td>
				<td colspan="3">
				${cat.description}
				</td>
			</tr>
			<tr ><td colspan="1">Image</td>
			<td colspan="3">
				<img style="height: 30px; width: 30px;" src="<c:out value='${pageContext.servletContext.contextPath}'/>/<%= commonConstant.categoryPageSnap %>${cat.image}"  />
			</td>
			</tr>

			
			<c:if test="${cat.parentCatId ne null and cat.parentCatId ne 0}">
<!--			<tr ><td colspan="4"><br/><hr noshade size=7></td>-->
			</tr>

				<tr>
					<td colspan="1">Parent Category Name</td>
					<td colspan="3">${cat.parentCatName}</td>
				</tr>
				<tr>
					<td colspan="1">Description</td>
					<td colspan="3">N/A</td>
				</tr>
				<tr ><td colspan="1">Image</td>
				<td colspan="3">
				<img style="height: 30px; width: 30px;" src="<c:out value='${pageContext.servletContext.contextPath}'/>/<%= commonConstant.categoryPageSnap %>${cat.parentCatImage}"  />
				</td>
				</tr>
			</c:if>
		</table>
	       	
		</form:form>
       	<input type="button" name="submit" id="submit" value="submit" onclick="submitForm()">
	</body> 
</html>

