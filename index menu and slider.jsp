
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="com.ravi.MyConstant.commonConstant"%>

<!doctype html>  

<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->

<head>
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/navbar.css">
<script type='text/javascript' src='<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/js/jquery-1.9.1.js'></script>
<script type="text/javascript"> 
$(document).ready(function(){

	// Requried: Navigation bar drop-down
	$("nav ul li").hover(function() {
		$(this).addClass("active");
		$(this).find("ul").show().animate({opacity: 1}, 400);
		},function() {
		$(this).find("ul").hide().animate({opacity: 0}, 200);
		$(this).removeClass("active");
	});
	
	// Requried: Addtional styling elements
	$('nav ul li ul li:first-child').prepend('<li class="arrow"></li>');
	$('nav ul li:first-child').addClass('first');
	$('nav ul li:last-child').addClass('last');
	$('nav ul li ul').parent().append('<span class="dropdown"></span>').addClass('drop');

});
</script>
<!-- END JavaScript -->

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" > 
    <title><%= commonConstant.title %></title> 
    <link rel="shortcut icon" href="<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/images/slides/thumbs/bridge.jpg"/>
    
    <link rel='stylesheet' id='camera-css'  href='<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/css/camera.css' type='text/css' media='all'> 
    <style>
		body {
			margin: 0;
			padding: 0;
		}
		a {
			color: #09f;
		}
		a:hover {
			text-decoration: none;
		}
		#back_to_camera {
			clear: both;
			display: block;
			height: 80px;
			line-height: 40px;
			padding: 20px;
		}
		.fluid_container {
			margin: 0 auto;
			max-width: 100%;
			width: 00100%;
		}
	</style>

    <script type='text/javascript' src='<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/scripts/jquery.min.js'></script>
    <script type='text/javascript' src='<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/scripts/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/scripts/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/scripts/camera.min.js'></script> 
    
    <script>
		jQuery(function(){
			jQuery('#camera_wrap_2').camera({
				loader: 'bar',
				pagination: false,
				thumbnails: true,
				hover:false
			});
		});
		
		
		/*
				height: 'auto',
				loader: 'bar',
				pagination: false,
				thumbnails: true,
				hover: false,
				opacityOnGrid: false,
				imagePath: '<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/'
		
		*/
	</script>
 








</head>

<body>
<table width="100%" style="width: 100%" border="5">
<tr><td nowrap="nowrap">
	<div class="wrapper">
		<nav class="dark" `>
			<ul class="clear">
				<li><a href="#">Home</a></li>
				<li class="active"><a href="#">About</a></li>
				<li><a href="#">Products</a>
					<ul>
						<li><a href="#">Branding</a></li>
						<li><a href="#">Print</a></li>
						<li><a href="#">Web</a></li>
						<li><a href="#">Marketing</a></li>
					</ul>
				</li>
				<li><a href="#">Portfolio</a></li>
				<li><a href="#">Clients</a></li>
				<li><a href="#">Our blog</a></li>
				<li><a href="#">Downloads</a></li>
				<li><a href="#">Contact us</a></li>
				<li><a href="#">Experence Outlets</a></li>
			</ul>
		</nav>
		<!-- END Dark navigation bar -->
	</div>
	</td>
	</tr>
<tr><td>	
	<div class="fluid_container">
        <div class="camera_wrap camera_magenta_skin" id="camera_wrap_2" >
            <div data-thumb="<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/images/slides/thumbs/bridge.jpg" data-src="<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/images/slides/bridge.jpg">
                <div class="camera_caption fadeFromBottom">
                    Camera is a responsive/adaptive slideshow. <em>Try to resize the browser window</em>
                </div>
            </div>
            <div data-thumb="<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/images/slides/thumbs/leaf.jpg" data-src="<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/images/slides/leaf.jpg">
                <div class="camera_caption fadeFromBottom">
                    It uses a light version of jQuery mobile, <em>navigate the slides by swiping with your fingers</em>
                </div>
            </div>
            <div data-thumb="<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/images/slides/thumbs/road.jpg" data-src="<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/images/slides/road.jpg">
                <div class="camera_caption fadeFromBottom">
                    <em>It's completely free</em> (even if a donation is appreciated)
                </div>
            </div>
            <div data-thumb="<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/images/slides/thumbs/sea.jpg" data-src="<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/images/slides/sea.jpg">
                <div class="camera_caption fadeFromBottom">
                    Camera slideshow provides many options <em>to customize your project</em> as more as possible
                </div>
            </div>
            <div data-thumb="<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/images/slides/thumbs/shelter.jpg" data-src="<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/images/slides/shelter.jpg">
                <div class="camera_caption fadeFromBottom">
                    It supports captions, HTML elements and videos and <em>it's validated in HTML5</em> (<a href="http://validator.w3.org/check?uri=http%3A%2F%2Fwww.pixedelic.com%2Fplugins%2Fcamera%2F&amp;charset=%28detect+automatically%29&amp;doctype=Inline&amp;group=0&amp;user-agent=W3C_Validator%2F1.2" target="_blank">have a look</a>)
                </div>
            </div>
            <div data-thumb="<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/images/slides/thumbs/tree.jpg" data-src="<c:out value='${pageContext.servletContext.contextPath}'/>/thems/homepage/images/slides/tree.jpg">
                <div class="camera_caption fadeFromBottom">
                    Different color skins and layouts available, <em>fullscreen ready too</em>
                </div>
            </div>
        </div><!-- #camera_wrap_2 -->
    </div><!-- .fluid_container -->
    
    <div style="clear:both; display:block; height:100px"></div>
    </td>
	</tr>
</table>
	
	
	
	
</body>
</html>


