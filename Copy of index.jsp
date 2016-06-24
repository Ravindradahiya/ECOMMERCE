<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<!DOCTYPE html>
<!-- Camera is a Pixedelic free jQuery slideshow | Manuel Masia (designer and developer) --> 
<%@page import="com.ravi.MyConstant.commonConstant"%>
<html> 
<head> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" > 
    <title><%= commonConstant.title %></title> 
    <link rel='stylesheet' id='camera-css'  href='<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/css/camera.css' type='text/css' media='all'> 
    <style>
		html,body {
			height: 100%;
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
			background: rgba(255,255,255,.9);
			clear: both;
			display: block;
			height: 40px;
			line-height: 40px;
			padding: 20px;
			position: relative;
			z-index: 1;
		}
		.fluid_container {
			bottom: 0;
			height: 100%;
			left: 0;
			position: fixed;
			right: 0;
			top: 0;
			z-index: 0;
		}
		#camera_wrap_4 {
			bottom: 0;
			height: 100%;
			left: 0;
			margin-bottom: 0!important;
			position: fixed;
			right: 0;
			top: 0;
		}
		.camera_bar {
			z-index: 2;
		}
		.camera_thumbs {
			margin-top: -100px;
			position: relative;
			z-index: 1;
		}
		.camera_thumbs_cont {
			border-radius: 0;
			-moz-border-radius: 0;
			-webkit-border-radius: 0;
		}
		.camera_overlayer {
			opacity: .1;
		}
	</style>

    <!--///////////////////////////////////////////////////////////////////////////////////////////////////
    //
    //		Scripts
    //
    ///////////////////////////////////////////////////////////////////////////////////////////////////--> 
    
    <script type='text/javascript' src='<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/scripts/jquery.min.js'></script>
    <script type='text/javascript' src='<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/scripts/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/scripts/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/scripts/camera.min.js'></script> 
    
    <script>
		jQuery(function(){
			
			jQuery('#camera_wrap_4').camera({
				height: 'auto',
				loader: 'bar',
				pagination: false,
				thumbnails: true,
				hover: false,
				opacityOnGrid: false,
				imagePath: '<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/'
			});

		});
	</script>
 
</head>
<body>
	<div id="back_to_camera">
    	<a href="http://www.pixedelic.com/plugins/camera/">&larr; Back to the Camera project</a>
    </div><!-- #back_to_camera -->
    
	<div class="fluid_container">
        <div class="camera_wrap camera_emboss pattern_1" id="camera_wrap_4">
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/bridge.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/bridge.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/leaf.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/leaf.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/road.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/road.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/sea.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/sea.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/shelter.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/shelter.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/tree.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/tree.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/bridge.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/bridge.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/leaf.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/leaf.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/road.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/road.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/sea.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/sea.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/shelter.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/shelter.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/tree.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/tree.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/bridge.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/bridge.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/leaf.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/leaf.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/road.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/road.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/sea.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/sea.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/shelter.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/shelter.jpg"></div>
            <div data-thumb="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/thumbs/tree.jpg" data-src="<c:out value="${pageContext.servletContext.contextPath}"/>/thems/homepage/images/slides/tree.jpg"></div>
        </div><!-- #camera_wrap_3 -->

    </div><!-- .fluid_container -->
    
</body> 
</html>