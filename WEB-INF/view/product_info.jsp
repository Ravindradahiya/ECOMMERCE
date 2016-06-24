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

			
			<tr>
				<td colspan="1">Brand</td>
				<td colspan="3">${item.brand}</td>
			</tr>
			<tr>
				<td colspan="1">Product Name</td>
				<td colspan="3">${item.name}</td>
			</tr>
			<tr>
				<td colspan="1">description</td>
				<td colspan="3">${item.description }</td>
			</tr>
			
			
			<tr>
				<td colspan="1">Launch</td>
				<td colspan="3" nowrap="nowrap">
					<c:if test="${item.launch eq 1}">New</c:if>
					<c:if test="${item.launch eq 2}">N/A</c:if>&nbsp;
				</td>
			</tr>
			<tr>
				<td colspan="1">Color</td>
				<td colspan="3">${item.color}</td>
			</tr>
			<tr>
				<td colspan="1">Size</td>
				<td colspan="3">${item.size}</td>
			</tr>
			<tr>
				<td colspan="1">Quantity</td>
				<td colspan="3">${item.quantity}</td>
			</tr>
			<tr>
				<td colspan="1">Stock</td>
				<td colspan="3">${item.stock}</td>
			</tr>
			<tr>
				<td colspan="1">Rating</td>
				<td colspan="3">${item.rating}</td>
			</tr>
			<tr>
				<td colspan="1">Weight</td>
				<td colspan="3">${item.weigth}</td>
			</tr>

			<c:if test="${item.imageA ne null and ! empty item.imageA }">
			<tr>
				<td colspan="1">Select Image A  :</td>
					<td colspan="1">
						<img style="height: 30px; width: 30px;" src="<c:out value='${pageContext.servletContext.contextPath}'/>/<%= commonConstant.itemPageSnap %>${item.imageA}"  />
					</td>
			</tr>
			</c:if>
			
			<c:if test="${item.imageB ne null and ! empty item.imageB}">
			<tr>
				<td colspan="1">Select Image B  :</td>
					<td colspan="1">
						<img style="height: 30px; width: 30px;" src="<c:out value='${pageContext.servletContext.contextPath}'/>/<%= commonConstant.itemPageSnap %>${item.imageB}"  />
					</td>
			</tr>
			</c:if>
			
			<c:if test="${item.imageC ne null and ! empty item.imageC }">
			<tr>
				<td colspan="1">Select Image C  :</td>
					<td colspan="1">
						<img style="height: 30px; width: 30px;" src="<c:out value='${pageContext.servletContext.contextPath}'/>/<%= commonConstant.itemPageSnap %>${item.imageC}"  />
					</td>
			</tr>
			</c:if>
			
		</table>
	       	
		</form:form>
       	<input type="button" name="submit" id="submit" value="submit" onclick="submitForm()">
	</body> 
</html>


