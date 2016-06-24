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
		<table width="100%">
			<tr>
				<td colspan="1">Category Name</td>
				<td colspan="1">Description</td>
				<td colspan="1">Image</td>
				<td colspan="1">Parent Category</td>
				<td colspan="1">Action</td>
			</tr>
			<c:forEach items="${cat}" var="c">
			<tr>
				<td colspan="1">${c.name}</td>
				<td colspan="1">${c.description}</td>
				<td colspan="1">
					<img style="height: 30px; width: 30px;" src="<c:out value='${pageContext.servletContext.contextPath}'/>/<%= commonConstant.categoryPageSnap %>/${c.image}"/>
				</td>
				<td colspan="1">
				<c:if test="${c.parentCatId ne null and c.parentCatId ne 0}">
					${c.parentCatName}
				</c:if>&nbsp;
				</td>
				<td colspan="1">
					<a href="categoryInfo.html?id=${c.id}"><font color="blue"><b>View</b></font></a>
				</td>
			</tr>
			</c:forEach>
		</table>
	       	
		</form:form>
       	<input type="button" name="submit" id="submit" value="submit" onclick="submitForm()">
	</body> 
</html>

