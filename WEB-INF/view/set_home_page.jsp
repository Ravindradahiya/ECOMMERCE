<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
			<tr ><td colspan="1">Select Image  :</td>
				<td colspan="1"><input type="file" id="files[0]" name="files[0]"/></td>
			</tr>
			<tr >
				<td colspan="1">
					Enter Content  : 				
		       	</td>
				<td colspan="1">
			       	<input type="text" id="content[0]" name="content[0]"/>
				</td>
			</tr>
			<tr ><td colspan="1">Select Style  : </td>
				<td colspan="1" align="left">
			       	<select title="Style" name="slides[0]" id="slides[0]">
				       	<option value="Select">Select</option>
			       		<c:forEach items="${style}" var="s">
				       		<option value="${s}">${s}</option>
			       		</c:forEach>
			       	</select>
				</td>
			</tr>
			<tr ><td colspan="1">Enter Top  :</td>
				<td colspan="1"><input type="text" id="top[0]" name="top[0]"/></td>
			</tr>
			<tr ><td colspan="1">Select Width  :</td>
				<td colspan="1"><input type="text" id="width[0]" name="width[0]"/></td>
			</tr>
			<tr ><td colspan="1">Select Left  :</td>
				<td colspan="1"> <input type="text" id="left[0]" name="left[0]"/></td>
			</tr>
			<tr ><td colspan="1">Select Height  :</td>
				<td colspan="1"><input type="text" id="height[0]" name="height[0]"/></td>
			</tr>
		</table>
	       	
		</form:form>
       	<input type="button" name="submit" id="submit" value="submit" onclick="submitForm()">
	</body> 
</html>

