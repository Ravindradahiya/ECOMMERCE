
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html> 
<head> 
	<link rel="stylesheet" href="<c:out value='${pageContext.servletContext.contextPath}'/>/css/css/demo-menu-item.css" media="screen" type="text/css">
	<link rel="stylesheet" href="<c:out value='${pageContext.servletContext.contextPath}'/>/css/css/demo-menu-bar.css" media="screen" type="text/css">
    <script type="text/javascript" src="<c:out value='${pageContext.servletContext.contextPath}'/>/JS/menu-for-applications.js"></script>
    

<body style="margin:0;padding:0; background:#fff; font-family: Arial, Verdana, Sans-Serif;"> 


<style type="text/css">
	body{
		margin:0px;
		text-align:center;
	}
	
	#mainContentainer{
		width:1270px;
		color: white;
		background-color: #151B54;

	}
	#mainContent{
		border:1px solid #000;
	}
	
	#textContent{
		height:400px;
		overflow:auto;
	}
	#menuDiv{
		width:100%;
		overflow:hidden;
	}
	pre{
		color:#F00;
	}
	p,pre{

	}
	</style>
</head>

<div id="mainContentainer">
	<div id="mainContent" >
	
		<!-- This <ul><li> list is the source of a menuModel object -->
		<ul id="menuModel" style="display:none">
			<li id="50000" itemIcon=""><a href="home.html" title="Open the file menu"><b>Home</b></a>
				<ul width="150">
					<li id="500001" jsFunction="saveWork()" itemIcon=""><a href="#" title="Save your work">Save</a></li>
					<li id="500002"><a href="#">Save As</a></li>
					<li id="500003" itemType="separator"></li>
					<li id="500004"><a href="#">Open</a>
						<ul width="130">
							<li id="5000041"><a href="#">CSS</a>	
							<li id="5000042"><a href="#">HTML</a>	
							<li id="5000043"><a href="#">Javascript</a>	
						</ul>					
					</li>
				</ul>
			</li>
			<li id="50001"><a href="#"><b>Exhibition</b></a>
				<ul width="130">
					<li id="500011"><a href="#">Source</a></li>
					<li id="500012"><a href="#">Debug info</a></li>
					<li id="500013"><a href="#">Layout</a>
						<ul width="150">
							<li id="5000131"><a href="#">CSS</a>	
							<li id="5000132"><a href="#">HTML</a>	
							<li id="5000133"><a href="#">Javascript</a>	
						</ul>
					</li>
				
				</ul>
			</li>
			
			<li id="50002" itemIcon=""><a href="#" title="Open the file menu"><b>Outlets</b></a>
				<ul width="150">
					<li id="500021" jsFunction="saveWork()" ><a href="#" title="Save your work">Men</a></li>
					<li id="500022"><a href="#">Women</a></li>
					<li id="500023" itemType="separator"></li>
					<li id="500024"><a href="#">Kids</a>
						<ul width="130">
							<li id="5000241"><a href="#">Tops</a>	
							<li id="5000242"><a href="#">Bottoms</a>	
							<li id="5000243"><a href="#">Footwear</a>	
						</ul>					
					</li>
					<li id="500025" jsFunction="" ><a href="reveursProducts.html" title="Products">Products</a></li>
				</ul>
			</li>
			
			<li id="50003" itemIcon=""><a href="#" title="Open the file menu"><b>Offers</b></a>
				<ul width="150">
					<li id="500031" jsFunction="saveWork()" ><a href="#" title="Save your work">Men</a></li>
					<li id="500032"><a href="#">Women</a></li>
					<li id="500033" itemType="separator"></li>
					<li id="500034"><a href="#">Kids</a>
						<ul width="130">
							<li id="5000341"><a href="#">Tops</a>	
							<li id="5000342"><a href="#">Bottoms</a>	
							<li id="5000343"><a href="#">Footwear</a>	
						</ul>					
					</li>
				</ul>
			</li>
			
			
			<li id="50004" itemIcon=""><a href="#" title="Open the file menu"><b>Portfolio</b></a>
				<ul width="150">
					<li id="500041" jsFunction="saveWork()" ><a href="#" title="Save your work">Men</a></li>
					<li id="500042"><a href="#">Women</a></li>
					<li id="500043" itemType="separator"></li>
					<li id="500044"><a href="#">Kids</a>
						<ul width="130">
							<li id="5000441"><a href="#">Tops</a>	
							<li id="5000442"><a href="#">Bottoms</a>	
							<li id="5000443"><a href="#">Footwear</a>	
						</ul>					
					</li>
				</ul>
			</li>
			
			<li id="50005" itemIcon=""><a href="#" title="Open the file menu"><b>About Us</b></a>
			</li>
			<c:if test="${userName ne null && !empty userName }" >
			</c:if>	
				<li id="50006" itemIcon=""><a href="#" title="Open the file menu"><b>My Account</b></a>
					<ul width="150">
						<li id="500060" jsFunction="" ><a href="setHomePage.html" title="Set Home Page">Set Home Page</a></li>
						<li id="500061" jsFunction="" ><a href="addProductInfo.html" title="Add Product">Add Product</a></li>
					</ul>
				</li>
				<li id="50007" itemIcon=""><a href="#" title="Open the file menu"><b>Category</b></a>
					<ul width="150">
						<li id="500062" jsFunction="" ><a href="addCategoryInfo.html" title="Add Category">Add Category</a></li>
						<li id="500063" jsFunction="" ><a href="addSubCategoryInfo.html" title="Add Sub Category">Add Sub Category</a></li>
						<li id="500064" jsFunction="" ><a href="category.html" title="Category">Category</a></li>
					</ul>
				</li>
				<li id="50008" itemIcon=""><a href="#" title="Open the file menu"><b>Product</b></a>
					<ul width="150">
						<li id="500070" jsFunction="" ><a href="addProductInfo.html" title="Add Product">Add Product</a></li>
						<li id="500071" jsFunction="" ><a href="addSubProductInfo.html" title="Add Sub Product">Add Sub Product</a></li>
						<li id="500072" jsFunction="" ><a href="product.html" title="Prdouct">Product</a></li>
					</ul>
				</li>
		</ul>	
		<div id="menuDiv"></div>
	<script type="text/javascript">	
	var menuModel = new DHTMLSuite.menuModel();
	menuModel.addItemsFromMarkup('menuModel');
	menuModel.setMainMenuGroupWidth(00);	
	menuModel.init();
	
	var menuBar = new DHTMLSuite.menuBar();
	menuBar.addMenuItems(menuModel);
	menuBar.setMenuItemCssPrefix('Custom_');
	menuBar.setCssPrefix('Custom_');
	menuBar.setTarget('menuDiv');
	
	menuBar.init();
	
	var menuModel2 = new DHTMLSuite.menuModel();
	menuModel2.addItemsFromMarkup('menuModel2');
	menuModel2.setMainMenuGroupWidth(00);	
	menuModel2.init();
	
	var menuBar2 = new DHTMLSuite.menuBar();
	menuBar2.addMenuItems(menuModel2);
	menuBar2.setTarget('menu2');
	
	menuBar2.init();
	
	</script>
</body> 
</html>