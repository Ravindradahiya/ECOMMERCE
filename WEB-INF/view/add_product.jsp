<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html> 
<head> 
    
    <script type="text/javascript">
		function submitForm() {
			if(document.getElementById("category").value == 0) {
				alert("Please select category.");
				return;
			}
			alert("  " + document.getElementById("category").value);
			return;
			if(document.getElementById("name").value == "") {
				alert("Please enter product name.");
				return;
			}
			
			if(document.getElementById("launch2").checked == true) {
				document.getElementById("launch").value = 0;
			}
			
			document.forms["myForm"].action = "saveProductInfo.html";
			document.forms["myForm"].submit();
		}
		<c:if test="${message ne null and ! empty message }">alert("${message}")</c:if>
    </script>
    
</head>
	<body style="margin:0;padding:0; background:#fff; font-family: Arial, Verdana, Sans-Serif;"> 
		<form:form name="myForm" enctype="multipart/form-data" modelAttribute="homeform" >
		<table width="100%">
			<tr>
				<td colspan="1">Select Category</td>
				<td colspan="1">
					<Select id="category" name="category" onclick="addCat(this.value)">
					<option id='0'>Select</option>
					<c:forEach items="${cat}" var="c"> 
						<option id='${c.id}' value="${c.id}">${c.name}</option>
					</c:forEach>
					</Select>
				</td>
				<td colspan="2">
				<span id="spanSubCat"></span>
				</td>
			</tr>
			<tr>
				<td colspan="1">Brand</td>
				<td colspan="3"><input type="text" id="brand" name="brand"/></td>
			</tr>
			<tr>
				<td colspan="1">Product Name</td>
				<td colspan="3"><input type="text" id="name" name="name"/></td>
			</tr>
			<tr>
				<td colspan="1">description</td>
				<td colspan="3"><input type="text" id="description" name="description"/></td>
			</tr>
			
			
			<tr>
				<td colspan="1">Launch</td>
				<td colspan="3" nowrap="nowrap">
					<input type="radio" value = '1' id="launch1" name="launchA" checked="checked"/>New &nbsp;
					<input type="radio" value = '2' id="launch2" name="launchA"/>Old
					<input type="hidden" name="launch" id="launch" value="1">
				</td>
			</tr>
			<tr>
				<td colspan="1">Color</td>
				<td colspan="3"><input type="text" id="color" name="color"/></td>
			</tr>
			<tr>
				<td colspan="1">Size</td>
				<td colspan="3"><input type="text" id="size" name="size"/></td>
			</tr>
			<tr>
				<td colspan="1">Quantity</td>
				<td colspan="3"><input type="text" id="quantity" name="quantity"/></td>
			</tr>
			<tr>
				<td colspan="1">Stock</td>
				<td colspan="3"><input type="text" id="stock" name="stock"/></td>
			</tr>
			<tr>
				<td colspan="1">Rating</td>
				<td colspan="3"><input type="text" id="rating" name="rating"/></td>
			</tr>
			<tr>
				<td colspan="1">Weight</td>
				<td colspan="3"><input type="text" id="weigth" name="weigth"/></td>
			</tr>
			<tr ><td colspan="1">Select Image A  :</td>
				<td colspan="1"><input type="file" id="files[0]" name="files[0]"/></td>
			</tr>
			<tr ><td colspan="1">Select Image B  :</td>
				<td colspan="1"><input type="file" id="files[1]" name="files[1]"/></td>
			</tr>
			<tr ><td colspan="1">Select Image C :</td>
				<td colspan="1"><input type="file" id="files[2]" name="files[2]"/></td>
			</tr>
		</table>
	       	
		</form:form>
       	<input type="button" name="submit" id="submit" value="submit" onclick="submitForm()">
	</body> 
</html>

