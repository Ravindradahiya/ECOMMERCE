
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="com.ravi.MyConstant.commonConstant"%>

<!DOCTYPE html>
<html> 
<head> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width"> 

	<link rel="stylesheet" href="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/themes/base/jquery.ui.all.css">
	<script src="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/jquery-1.9.1.js"></script>
	<script src="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/ui/jquery.ui.core.js"></script>
	<script src="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/ui/jquery.ui.widget.js"></script>
	<script src="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/ui/jquery.ui.mouse.js"></script>
	<script src="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/ui/jquery.ui.button.js"></script>
	<script src="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/ui/jquery.ui.draggable.js"></script>
	<script src="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/ui/jquery.ui.position.js"></script>
	<script src="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/ui/jquery.ui.resizable.js"></script>
	<script src="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/ui/jquery.ui.button.js"></script>
	<script src="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/ui/jquery.ui.dialog.js"></script>
	<script src="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/ui/jquery.ui.effect.js"></script>
	<script src="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/ui/jquery.ui.effect-blind.js"></script>
	<script src="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/ui/jquery.ui.effect-explode.js"></script>
	<link rel="stylesheet" href="<c:out value='${pageContext.servletContext.contextPath}'/>/jquery-ui-1.10.3/development-bundle/demos.css">

    
    
    <link rel="stylesheet" href="<c:out value='${pageContext.servletContext.contextPath}'/>/css/css/demos.css" media="screen" type="text/css">
	<link rel="stylesheet" href="<c:out value='${pageContext.servletContext.contextPath}'/>/css/css/demo-menu-item.css" media="screen" type="text/css">
	<link rel="stylesheet" href="<c:out value='${pageContext.servletContext.contextPath}'/>/css/css/demo-menu-bar.css" media="screen" type="text/css">
    <!-- use jssor.slider.mini.js (39KB) or jssor.sliderc.mini.js (31KB, with caption, no slideshow) or jssor.sliders.mini.js (26KB, no caption, no slideshow) instead for release -->
    <!-- jssor.slider.mini.js = jssor.sliderc.mini.js = jssor.sliders.mini.js = (jssor.core.js + jssor.utils.js + jssor.slider.js) -->
    <script type="text/javascript" src="<c:out value='${pageContext.servletContext.contextPath}'/>/JS/jssor.core.js"></script>
    <script type="text/javascript" src="<c:out value='${pageContext.servletContext.contextPath}'/>/JS/jssor.utils.js"></script>
    <script type="text/javascript" src="<c:out value='${pageContext.servletContext.contextPath}'/>/JS/jssor.slider.js"></script>
    <script type="text/javascript" src="<c:out value='${pageContext.servletContext.contextPath}'/>/JS/menu-for-applications.js"></script>
    
    <script>

        jQuery(document).ready(function ($) {
            //Reference http://www.jssor.com/developement/slider-with-slideshow.html
            //Reference http://www.jssor.com/developement/tool-slideshow-transition-viewer.html

            var _SlideshowTransitions = [
            //Collapse Random
            {$Duration: 1000, $Delay: 80, $Cols: 10, $Rows: 4, $Clip: 15, $SlideOut: true, $Easing: $JssorEasing$.$EaseOutQuad }
            //Fade in LR Chess
            , { $Duration: 1200, $Cols: 2, $During: { $Top: [0.3, 0.7] }, $FlyDirection: 4, $ChessMode: { $Column: 12 }, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleVertical: 0.3, $Opacity: 2 }
            //Rotate VDouble+ out
            , { $Duration: 1000, $Rows: 2, $Zoom: 11, $Rotate: true, $SlideOut: true, $FlyDirection: 6, $Assembly: 2049, $ChessMode: { $Row: 15 }, $Easing: { $Left: $JssorEasing$.$EaseInExpo, $Top: $JssorEasing$.$EaseInExpo, $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $ScaleHorizontal: 1, $ScaleVertical: 2, $Opacity: 2, $Round: { $Rotate: 0.85} }
            //Swing Inside in Stairs
            , { $Duration: 1200, $Delay: 20, $Cols: 10, $Rows: 4, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $FlyDirection: 9, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Top: $JssorEasing$.$EaseInWave, $Clip: $JssorEasing$.$EaseOutQuad }, $ScaleHorizontal: 0.2, $ScaleVertical: 0.1, $Round: { $Left: 1.3, $Top: 2.5} }
            //Zoom HDouble+ out
            , { $Duration: 1200, $Cols: 2, $Zoom: 21, $SlideOut: true, $FlyDirection: 1, $Assembly: 2049, $ChessMode: { $Column: 15 }, $Easing: { $Left: $JssorEasing$.$EaseInExpo, $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 4, $Opacity: 2 }
            //Dodge Pet Inside in Stairs
            , { $Duration: 1500, $Delay: 20, $Cols: 10, $Rows: 4, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $FlyDirection: 9, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Top: $JssorEasing$.$EaseInWave, $Clip: $JssorEasing$.$EaseOutQuad }, $ScaleHorizontal: 0.2, $ScaleVertical: 0.1, $Round: { $Left: 0.8, $Top: 2.5} }
            //Rotate Zoom+ out BL
            , { $Duration: 1200, $Zoom: 11, $Rotate: true, $SlideOut: true, $FlyDirection: 9, $Easing: { $Left: $JssorEasing$.$EaseInExpo, $Top: $JssorEasing$.$EaseInExpo, $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $ScaleHorizontal: 4, $ScaleVertical: 4, $Opacity: 2, $Round: { $Rotate: 0.8} }
            //Dodge Dance Inside in Random
            , { $Duration: 1500, $Delay: 80, $Cols: 10, $Rows: 4, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $FlyDirection: 9, $Easing: { $Left: $JssorEasing$.$EaseInJump, $Top: $JssorEasing$.$EaseInJump, $Clip: $JssorEasing$.$EaseOutQuad }, $ScaleHorizontal: 0.3, $ScaleVertical: 0.3, $Round: { $Left: 0.8, $Top: 2.5} }
            //Rotate VFork+ out
            , { $Duration: 1200, $Rows: 2, $Zoom: 11, $Rotate: true, $SlideOut: true, $FlyDirection: 6, $Assembly: 2049, $ChessMode: { $Row: 28 }, $Easing: { $Left: $JssorEasing$.$EaseInExpo, $Top: $JssorEasing$.$EaseInExpo, $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $ScaleHorizontal: 3, $ScaleVertical: 1, $Opacity: 2, $Round: { $Rotate: 0.7} }
            //Clip and Chess in
            , { $Duration: 1200, $Cols: 10, $Rows: 4, $Clip: 15, $During: { $Top: [0.5, 0.5], $Clip: [0, 0.5] }, $FlyDirection: 8, $Formation: $JssorSlideshowFormations$.$FormationStraight, $ChessMode: { $Column: 12 }, $ScaleClip: 0.5 }
            //Swing Inside in Swirl
            , { $Duration: 1200, $Delay: 20, $Cols: 10, $Rows: 4, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $FlyDirection: 9, $Formation: $JssorSlideshowFormations$.$FormationSwirl, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Top: $JssorEasing$.$EaseInWave, $Clip: $JssorEasing$.$EaseOutQuad }, $ScaleHorizontal: 0.2, $ScaleVertical: 0.1, $Round: { $Left: 1.3, $Top: 2.5} }
            //Rotate Zoom+ out
            , { $Duration: 1200, $Zoom: 11, $Rotate: true, $SlideOut: true, $Easing: { $Zoom: $JssorEasing$.$EaseInCubic, $Rotate: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $Round: { $Rotate: 0.7} }
            //Dodge Pet Inside in ZigZag
            , { $Duration: 1500, $Delay: 20, $Cols: 10, $Rows: 4, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $FlyDirection: 9, $Formation: $JssorSlideshowFormations$.$FormationZigZag, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Top: $JssorEasing$.$EaseInWave, $Clip: $JssorEasing$.$EaseOutQuad }, $ScaleHorizontal: 0.2, $ScaleVertical: 0.1, $Round: { $Left: 0.8, $Top: 2.5} }
            //Rotate Zoom- out TL
            , { $Duration: 1200, $Zoom: 1, $Rotate: true, $SlideOut: true, $FlyDirection: 5, $Easing: $JssorEasing$.$EaseLinear, $ScaleHorizontal: 0.8, $ScaleVertical: 0.8, $Opacity: 2, $Round: { $Rotate: 0.2} }
            //Rotate Zoom- in BR
            , { $Duration: 1200, $Zoom: 1, $Rotate: true, $During: { $Left: [0.2, 0.8], $Top: [0.2, 0.8], $Zoom: [0.2, 0.8], $Rotate: [0.2, 0.8] }, $FlyDirection: 10, $Easing: { $Zoom: $JssorEasing$.$EaseSwing, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseSwing }, $ScaleHorizontal: 0.6, $ScaleVertical: 0.6, $Opacity: 2, $Round: { $Rotate: 0.5} }
            // Wave out Eagle
            , { $Duration: 1500, $Delay: 60, $Cols: 24, $SlideOut: true, $FlyDirection: 8, $Formation: $JssorSlideshowFormations$.$FormationCircle, $Easing: $JssorEasing$.$EaseInWave, $ScaleVertical: 0.5, $Round: { $Top: 1.5} }
            //Expand Stairs
            , { $Duration: 1000, $Delay: 30, $Cols: 10, $Rows: 4, $Clip: 15, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 2050, $Easing: $JssorEasing$.$EaseInQuad }
            //Fade Clip out H
            , { $Duration: 1200, $Delay: 20, $Clip: 3, $SlideOut: true, $Assembly: 260, $Easing: { $Clip: $JssorEasing$.$EaseOutCubic, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 }
            //Dodge Pet Inside in Random Chess
            , { $Duration: 1500, $Delay: 80, $Cols: 10, $Rows: 4, $Clip: 15, $During: { $Left: [0.2, 0.8], $Top: [0.2, 0.8] }, $FlyDirection: 9, $ChessMode: { $Column: 15, $Row: 15 }, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Top: $JssorEasing$.$EaseInWave, $Clip: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.2, $ScaleVertical: 0.1, $Round: { $Left: 0.8, $Top: 2.5} }
            ];

            //Reference http://www.jssor.com/developement/slider-with-caption.html
            //Reference http://www.jssor.com/developement/reference-ui-definition.html#captiondefinition
            //Reference http://www.jssor.com/developement/tool-caption-transition-viewer.html

            var _CaptionTransitions = [];
            _CaptionTransitions["L"] = { $Duration: 900, $FlyDirection: 1, $Easing: { $Left: $JssorEasing$.$EaseInCubic }, $ScaleHorizontal: 0.6, $Opacity: 2 };
            _CaptionTransitions["R"] = { $Duration: 900, $FlyDirection: 2, $Easing: { $Left: $JssorEasing$.$EaseInCubic }, $ScaleHorizontal: 0.6, $Opacity: 2 };
            _CaptionTransitions["T"] = { $Duration: 900, $FlyDirection: 4, $Easing: { $Top: $JssorEasing$.$EaseInCubic }, $ScaleVertical: 0.6, $Opacity: 2 };
            _CaptionTransitions["B"] = { $Duration: 900, $FlyDirection: 8, $Easing: { $Top: $JssorEasing$.$EaseInCubic }, $ScaleVertical: 0.6, $Opacity: 2 };
            _CaptionTransitions["TR"] = { $Duration: 900, $FlyDirection: 6, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseInCubic }, $ScaleHorizontal: 0.6, $ScaleVertical: 0.6, $Opacity: 2 };

            _CaptionTransitions["L|IB"] = { $Duration: 1200, $FlyDirection: 1, $Easing: { $Left: $JssorEasing$.$EaseInOutBack }, $ScaleHorizontal: 0.6, $Opacity: 2 };
            _CaptionTransitions["R|IB"] = { $Duration: 1200, $FlyDirection: 2, $Easing: { $Left: $JssorEasing$.$EaseInOutBack }, $ScaleHorizontal: 0.6, $Opacity: 2 };
            _CaptionTransitions["T|IB"] = { $Duration: 1200, $FlyDirection: 4, $Easing: { $Top: $JssorEasing$.$EaseInOutBack }, $ScaleVertical: 0.6, $Opacity: 2 };

            _CaptionTransitions["CLIP|LR"] = { $Duration: 900, $Clip: 3, $Easing: { $Clip: $JssorEasing$.$EaseInOutCubic }, $Opacity: 2 };
            _CaptionTransitions["CLIP|TB"] = { $Duration: 900, $Clip: 12, $Easing: { $Clip: $JssorEasing$.$EaseInOutCubic }, $Opacity: 2 };
            _CaptionTransitions["CLIP|L"] = { $Duration: 900, $Clip: 1, $Easing: { $Clip: $JssorEasing$.$EaseInOutCubic }, $Opacity: 2 };

            _CaptionTransitions["MCLIP|R"] = { $Duration: 900, $Clip: 2, $Move: true, $Easing: { $Clip: $JssorEasing$.$EaseInOutCubic }, $Opacity: 2 };
            _CaptionTransitions["MCLIP|T"] = { $Duration: 900, $Clip: 4, $Move: true, $Easing: { $Clip: $JssorEasing$.$EaseInOutCubic }, $Opacity: 2 };

            _CaptionTransitions["WV|B"] = { $Duration: 1200, $FlyDirection: 10, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Top: $JssorEasing$.$EaseLinear }, $ScaleHorizontal: 0.2, $ScaleVertical: 0.6, $Opacity: 2, $Round: { $Left: 1.5} };

            _CaptionTransitions["TORTUOUS|VB"] = { $Duration: 1800, $Zoom: 1, $FlyDirection: 8, $Easing: { $Top: $JssorEasing$.$EaseOutWave, $Zoom: $JssorEasing$.$EaseOutCubic }, $ScaleVertical: 0.2, $Opacity: 2, $During: { $Top: [0, 0.7] }, $Round: { $Top: 1.3} };

            _CaptionTransitions["LISTH|R"] = { $Duration: 1500, $Clip: 1, $FlyDirection: 2, $Easing: $JssorEasing$.$EaseInOutCubic, $ScaleHorizontal: 0.8, $ScaleClip: 0.8, $Opacity: 2, $During: { $Left: [0.4, 0.6], $Clip: [0, 0.4], $Opacity: [0.4, 0.6]} };

            _CaptionTransitions["RTT|360"] = { $Duration: 900, $Rotate: 1, $Easing: { $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2 };
            _CaptionTransitions["RTT|10"] = { $Duration: 900, $Zoom: 11, $Rotate: 1, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $Opacity: 2, $Round: { $Rotate: 0.8} };

            _CaptionTransitions["RTTL|BR"] = { $Duration: 900, $Zoom: 11, $Rotate: 1, $FlyDirection: 10, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInCubic }, $ScaleHorizontal: 0.6, $ScaleVertical: 0.6, $Opacity: 2, $Round: { $Rotate: 0.8} };

            _CaptionTransitions["T|IE*IE"] = { $Duration: 1800, $Zoom: 11, $Rotate: -1.5, $FlyDirection: 4, $Easing: { $Top: $JssorEasing$.$EaseInOutElastic, $Zoom: $JssorEasing$.$EaseInElastic, $Rotate: $JssorEasing$.$EaseInOutElastic }, $ScaleVertical: 0.8, $Opacity: 2, $During: { $Zoom: [0, 0.8], $Opacity: [0, 0.7] }, $Round: { $Rotate: 0.5} };

            _CaptionTransitions["RTTS|R"] = { $Duration: 900, $Zoom: 1, $Rotate: 1, $FlyDirection: 2, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Zoom: $JssorEasing$.$EaseInQuad, $Rotate: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseOutQuad }, $ScaleHorizontal: 0.6, $Opacity: 2, $Round: { $Rotate: 1.2} };
            _CaptionTransitions["RTTS|T"] = { $Duration: 900, $Zoom: 1, $Rotate: 1, $FlyDirection: 4, $Easing: { $Top: $JssorEasing$.$EaseInQuad, $Zoom: $JssorEasing$.$EaseInQuad, $Rotate: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseOutQuad }, $ScaleVertical: 0.6, $Opacity: 2, $Round: { $Rotate: 1.2} };

            _CaptionTransitions["DDGDANCE|RB"] = { $Duration: 1800, $Zoom: 1, $FlyDirection: 10, $Easing: { $Left: $JssorEasing$.$EaseInJump, $Top: $JssorEasing$.$EaseInJump, $Zoom: $JssorEasing$.$EaseOutQuad }, $ScaleHorizontal: 0.3, $ScaleVertical: 0.3, $Opacity: 2, $During: { $Left: [0, 0.8], $Top: [0, 0.8] }, $Round: { $Left: 0.8, $Top: 2.5} };
            _CaptionTransitions["ZMF|10"] = { $Duration: 900, $Zoom: 11, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 };
            _CaptionTransitions["DDG|TR"] = { $Duration: 1200, $Zoom: 1, $FlyDirection: 6, $Easing: { $Left: $JssorEasing$.$EaseInJump, $Top: $JssorEasing$.$EaseInJump, $Zoom: $JssorEasing$.$ }, $ScaleHorizontal: 0.3, $ScaleVertical: 0.3, $Opacity: 2, $During: { $Left: [0, 0.8], $Top: [0, 0.8] }, $Round: { $Left: 0.8, $Top: 0.8} };

            _CaptionTransitions["FLTTR|R"] = { $Duration: 900, $FlyDirection: 10, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInWave }, $ScaleHorizontal: 0.2, $ScaleVertical: 0.1, $Opacity: 2, $Round: { $Top: 1.3} };
            _CaptionTransitions["FLTTRWN|LT"] = { $Duration: 1800, $Zoom: 1, $FlyDirection: 5, $Easing: { $Left: $JssorEasing$.$EaseInOutSine, $Top: $JssorEasing$.$EaseInWave, $Zoom: $JssorEasing$.$EaseInOutQuad }, $ScaleHorizontal: 0.5, $ScaleVertical: 0.2, $Opacity: 2, $During: { $Left: [0, 0.7], $Top: [0.1, 0.7] }, $Round: { $Top: 1.3} };

            _CaptionTransitions["ATTACK|BR"] = { $Duration: 1500, $Zoom: 1, $FlyDirection: 10, $Easing: { $Left: $JssorEasing$.$EaseOutWave, $Top: $JssorEasing$.$EaseInExpo }, $ScaleHorizontal: 0.1, $ScaleVertical: 0.5, $Opacity: 2, $During: { $Left: [0.3, 0.7], $Top: [0, 0.7] }, $Round: { $Left: 1.3} };

            _CaptionTransitions["FADE"] = { $Duration: 900, $Opacity: 2 };

            var options = {
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $AutoPlaySteps: 1,                                  //[Optional] Steps to go for each navigation request (this options applys only when slideshow disabled), the default value is 1
                $AutoPlayInterval: 2000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $PauseOnHover: 1,                                   //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, default value is 3

                $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                $SlideEasing: $JssorEasing$.$EaseOutQuint,
                $SlideDuration: 1500,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
                //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
                //$SlideHeight: 300,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
                $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
                $DisplayPieces: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                $ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
                $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, direction navigator container, thumbnail navigator container etc).
                $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, default value is 1
                $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

                $SlideshowOptions: {                                //[Optional] Options to specify and enable slideshow or not
                    $Class: $JssorSlideshowRunner$,                 //[Required] Class to create instance of slideshow
                    $Transitions: _SlideshowTransitions,            //[Required] An array of slideshow transitions to play slideshow
                    $TransitionsOrder: 1,                           //[Optional] The way to choose transition to play slide, 1 Sequence, 0 Random
                    $ShowLink: true                                    //[Optional] Whether to bring slide link on top of the slider when slideshow is running, default value is false
                },

                $CaptionSliderOptions: {                            //[Optional] Options which specifies how to animate caption
                    $Class: $JssorCaptionSlider$,                   //[Required] Class to create instance to animate caption
                    $CaptionTransitions: _CaptionTransitions,       //[Required] An array of caption transitions to play caption, see caption transition section at jssor slideshow transition builder
                    $PlayInMode: 1,                                 //[Optional] 0 None (no play), 1 Chain (goes after main slide), 3 Chain Flatten (goes after main slide and flatten all caption animations), default value is 1
                    $PlayOutMode: 3                                 //[Optional] 0 None (no play), 1 Chain (goes before main slide), 3 Chain Flatten (goes before main slide and flatten all caption animations), default value is 1
                },

                $DirectionNavigatorOptions: {                       //[Optional] Options to specify and enable direction navigator or not
                    $Class: $JssorDirectionNavigator$,              //[Requried] Class to create direction navigator instance
                    $ChanceToShow: 1,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 2,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
                },

                $NavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorNavigator$,                       //[Required] Class to create navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 1,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
                    $Lanes: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
                    $SpacingX: 4,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                    $SpacingY: 4,                                   //[Optional] Vertical space between each item in pixel, default value is 0
                    $Orientation: 1                                 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
                }
            };

            var jssor_slider1 = new $JssorSlider$("slider1_container", options);
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider() {
                var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
                if (parentWidth)
                    jssor_slider1.$SetScaleWidth(Math.max(Math.min(parentWidth, 960), 300));
                else
                    window.setTimeout(ScaleSlider, 30);
            }

            ScaleSlider();

            if (!navigator.userAgent.match(/(iPhone|iPod|iPad|BlackBerry|IEMobile)/)) {
                $(window).bind('resize', ScaleSlider);
            }
            //responsive code end
        });
    </script>
    
    <style> 
        .captionOrange, .captionBlack
        {
            color: #fff;
            font-size: 20px;
            line-height: 30px;
            text-align: center;
            border-radius: 4px;
        }
        .captionOrange
        {
            background: #EB5100;
            background-color: rgba(235, 81, 0, 0.6);
        }
        .captionBlack
        {
        	font-size:16px;
            background: #000;
            background-color: rgba(0, 0, 0, 0.4);
        }
        a.captionOrange, A.captionOrange:active, A.captionOrange:visited
        {
        	color: #ffffff;
        	text-decoration: none;
        }
        a.captionOrange:hover
        {
            color: #eb5100;
            text-decoration: underline;
            background-color: #eeeeee;
            background-color: rgba(238, 238, 238, 0.7);
        }
        .bricon
        {
            background: url(../img/browser-icons.png);
        }
    </style>

<body style="margin:0;padding:0; background:#fff; font-family: Arial, Verdana, Sans-Serif;"> 
    <!-- Caption Style -->
    <style> 
        .captionOrange, .captionBlack
        {
            color: #fff;
            font-size: 20px;
            line-height: 30px;
            text-align: center;
            border-radius: 4px;
        }
        .captionOrange
        {
            background: #EB5100;
            background-color: rgba(235, 81, 0, 0.6);
        }
        .captionBlack
        {
        	font-size:16px;
            background: #000;
            background-color: rgba(0, 0, 0, 0.4);
        }
        a.captionOrange, A.captionOrange:active, A.captionOrange:visited
        {
        	color: #ffffff;
        	text-decoration: none;
        }
        a.captionOrange:hover
        {
            color: #eb5100;
            text-decoration: underline;
            background-color: #eeeeee;
            background-color: rgba(238, 238, 238, 0.7);
        }
        .bricon
        {
            background: url(../img/browser-icons.png);
        }
    </style>
    <!-- it works the same with all jquery version from 1.3.1 to 2.0.3 -->


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
	
	<script type="text/javascript">
		$(function() {
		$( "input[type=submit], a, button" )
			.button()
			.click(function( event ) {
//				event.preventDefault();
			});
	});
	
	</script>
</head>
    <!-- Jssor Slider Begin -->
    <!-- You can move inline styles (except 'top', 'left', 'width' and 'height') to css file or css block. --> 
    <table width="100%" align="left">
    <tr><td>
    <body>
    <table  width="100%">
	  <tr>
	  	<td>
		    <div id="her" align="left" >
				<img  src="<c:out value='${pageContext.servletContext.contextPath}'/>/img/img/home/logo.png" style="height: 50px; width: 300px;" />
			</div>	
	  	</td>
	    <td align="center">
			<button id="opener">Login</button>
			<a href="signout.html" id="signout">Sign Out</a>
			<button id="create-user">Sign Up</button>
		</td>
	  </tr>
	</table>

<div id="mainContentainer">
	
	
	
	<div id="mainContent" >
		<!-- This <ul><li> list is the source of a menuModel object -->
		<ul id="menuModel" style="display:none">
			<li id="50000" itemIcon=""><a href="#" title="Open the file menu"><b>Home</b></a>
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
				<ul width="150">
					<li id="500051" jsFunction="saveWork()" ><a href="#" title="Save your work">Men</a></li>
					<li id="500052"><a href="#">Women</a></li>
					<li id="500053" itemType="separator"></li>
					<li id="500054"><a href="#">Kids</a>
						<ul width="130">
							<li id="5000541"><a href="#">Tops</a>	
							<li id="5000542"><a href="#">Bottoms</a>	
							<li id="5000543"><a href="#">Footwear</a>	
						</ul>					
					</li>
				</ul>
			</li>
		</ul>	
		<ul id="menuModel2" style="display:none">
			<li id="70000" itemIcon="../images/disk.gif"><a href="#" title="Open the file menu">File</a>
				<ul width="150">
					<li id="700001" jsFunction="saveWork()" itemIcon="../images/disk.gif"><a href="#" title="Save your work">Save</a></li>
					<li id="700002"><a href="#">Save As</a></li>
					<li id="700004" itemType="separator"></li>
					<li id="700003"><a href="#">Open</a></li>
				</ul>
			</li>
			<li id="70001"><a href="#">View</a>
				<ul width="130">
					<li id="700011"><a href="#">Source</a></li>
					<li id="700012"><a href="#">Debug info</a></li>
					<li id="700013"><a href="#">Layout</a>
						<ul width="150">
							<li id="7000131"><a href="#">CSS</a>	
							<li id="7000132"><a href="#">HTML</a>	
							<li id="7000133"><a href="#">Javascript</a>	
						</ul>
					</li>
				
				</ul>
			</li>
			<li id="70003" itemType="separator"></li>
			<li id="70002"><a href="#">Tools</a></li>
		</ul>	
			
		<div id="menuDiv"></div>
    </td></tr>
    
    
    
    
    
    
    <tr><td>
    <div id="slider1_container" style="position: relative; width: 725px;
        height: 390px; overflow: inherit;">
        <style>
            /* this line can be removed, but it really helps in case of css conflicts in your page */
            .slider1 div { position: relative; margin: 0px; padding: 0px; }
        </style>
 
        <!-- Loading Screen --> 
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;

                background-color: #000; top: 0px; left: 0px;width: 100%; height:100%;"> 
            </div> 
            <div style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center;

                top: 0px; left: 0px;width: 100%;height:100%;">
            </div> 
        </div> 
 
        <!-- Slides Container --> 
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 960px; height: 380px;
            overflow: hidden;">
            <div>
                <img u="image" src="<c:out value='${pageContext.servletContext.contextPath}'/>/img/img/home/01.jpg" />
                <div u=caption t="CLIP|LR" du="1500" class="captionOrange"  style="position:absolute; left:20px; top: 30px; width:500px; height:30px;"> 
               Sizes
                </div>
                <div u=caption t="L|IB" t2=L d=-900 class="captionBlack"  style="position:absolute; left:360px; top: 130px; width:60px; height:30px;"> 
                For Fit
                </div> 
                <div u=caption t="RTT|360" d=-200 class="captionBlack"  style="position:absolute; left:360px; top: 180px; width:60px; height:30px;"> 
                Everybody
                </div>
                <div u=caption t="DDGDANCE|RB" t2="RTT|10" d=-1800 du=3800 class="captionOrange"  style="position:absolute; left:560px; top: 110px; width:200px; height:120px; text-align: left;"> 
                &nbsp; Small (S)<br /> 
                &nbsp; Medium (M)<br /> 
                &nbsp; Large (L)<br /> 
                &nbsp; Extra Large (XXL)
                </div> 
                <div u=caption t="T|IE*IE" d=-1600 du=3800 t2="B" class="captionOrange"  style="position:absolute; left:20px; top: 310px; width:300px; height:30px;"> 
                tab slider and menu slider ...
                </div>
                <div u="caption" t="ZMF|10" t2="B" d=-1300 style="position:absolute;left:400px;top:280px;width:90px;height:40px;font-size:36px;color:#fff;line-height:40px;">390+</div>
                <div u="caption" t="CLIP|L" d=-300 style="position:absolute;left:500px;top:280px;width:160px;height:40px;font-size:36px;color:#fff;line-height:40px; text-align: center;">caption</div>
                <a class="captionOrange" u="caption" t="CLIP|L" d=-300 href="http://www.jssor.com/developement/tool-caption-transition-viewer.html" style="position:absolute;left:700px;top:280px;width:220px;height:40px;font-size:36px;color:#fff;line-height:40px;">transitions</a>
            </div>
            <div> 
             <img u="image" src="<c:out value='${pageContext.servletContext.contextPath}'/>/img/img/home/02.jpg" />
                <a class="captionOrange" href="http://www.jssor.com/developement/tool-slideshow-transition-viewer.html" style="position: absolute; top: 300px; left: 630px; width: 250px; height: 30px;">360+ Slideshow Transitions</a>
                <div u=caption t="CLIP|LR" t2="B" du="2000" class="captionOrange"  style="position:absolute; left:20px; top: 300px; width:500px; height:30px;"> 
                Jssor Slider is one of best performance sliders
                </div>
                <div u="caption" t="FADE" t2="B" d=-450 class=captionBlack style="position: absolute; left:700px;top:120px;width:200px;height:90px;">
                        No-JQuery<br />
                        Independent<br />
                        Javascript Code
                </div>
                <div u="caption" t="T|IB" t2="R" d=-600 class=captionOrange style="position: absolute; top: 90px; left: 720px; width: 160px;
                    height: 90px;  line-height: 90px;">
                    Compress
                </div>
                <div u="caption" t="MCLIP|T" t2="T" d=-450 style="position:absolute;left:505px;top:40px;width:200px;height:30px;font-size:18px;color:#fff;line-height:30px;text-align:center;">Size&nbsp; &nbsp; &nbsp;CPU Usage</div>
                <div u="caption" t="MCLIP|R" d=-300 style="position:absolute;left:325px;top:90px;width:350px;height:30px;font-size:18px;color:#fff;line-height:30px;" debug-id="slider-with-slideshow">Slider with Slideshow&nbsp; &nbsp; &nbsp; 23KB&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ~4%</div>
                <div u="caption" t="MCLIP|R" d=-300 style="position:absolute;left:325px;top:140px;width:350px;height:30px;font-size:18px;color:#fff;line-height:30px;">Slider with Caption&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 18KB&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ~4%</div>
                <div u="caption" t="MCLIP|R" d=-300 style="position:absolute;left:325px;top:190px;width:350px;height:30px;font-size:18px;color:#fff;line-height:30px;">Slider&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;17KB&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ~1%</div>
            </div>
            <div> 
              <img u="image" src="<c:out value='${pageContext.servletContext.contextPath}'/>/img/img/home/03.jpg" />
                <a class="captionOrange" href="http://www.jssor.com/demos/index.html" style="position: absolute; top: 30px; right: 30px; width: 200px;">30+ Demos</a>
                <div u=caption t="T" t2=NO style="position: absolute; left: 20px; top:30px; width:600px; height:90px; color: #fff; line-height: 30px; text-align: center;"> 
                    Jssor Slider is touch swipe image slideshow with 360+ javascript slideshow effects.<br />
                    When touch Jssor Slider,<br />
                    it will freeze and then move to the direction that finger swipes to.
                </div>
                <div u=caption t="L" d=-750 class="captionOrange"  style="position:absolute; left:20px; top: 300px; width:130px; height:30px;"> 
                Jssor slider
                </div>
                <div u=caption t="CLIP|L" t2=B d=-450 class="captionBlack"  style="position:absolute; left:160px; top: 300px; width:30px; height:30px;"> 
                is
                </div>
                <div u=caption t="DDG|TR" t2="TORTUOUS|VB" d=-750 class="captionOrange"  style="position:absolute; left:200px; top: 300px; width:300px; height:30px;"> 
                most scalable photo slideshow
                </div>
                <div u=caption t="RTT|10" d=-450 class="captionBlack"  style="position:absolute; left:430px; top: 240px; width:30px; height:30px;"> 
                for
                </div>
                <div u=caption t="TORTUOUS|VB" d=-750 class="captionOrange"  style="position:absolute; left:590px; top: 220px; width:80px; height:30px;"> 
                photo
                </div>
                <div u=caption t="T" d=-450 class="captionOrange"  style="position:absolute; left:720px; top: 200px; width:80px; height:30px;"> 
                image
                </div>
                <div u=caption t="FLTTR|R" t2="B" d=-600 class="captionOrange"  style="position:absolute; left:560px; top: 300px; width:80px; height:30px;"> 
                picture
                </div>
                <div u=caption t="ATTACK|BR" d=-600 class="captionOrange"  style="position:absolute; left:760px; top: 310px; width:80px; height:30px;"> 
                content
                </div>
                <div u="caption" t="FLTTRWN|LT" d=-900 style="position:absolute;left:460px;top:160px;width:130px;height:30px;font-size:28px;color:#fff;line-height:30px;">html code</div>
                <div u="caption" t="RTTS|R" d=-900 style="position:absolute;left:760px;top:120px;width:130px;height:30px;font-size:28px;color:#fff;line-height:30px;">web page</div>
                <div u="caption" t="R|IB" t2=R d=-900 style="position:absolute;left:860px;top:250px;width:60px;height:30px;font-size:28px;color:#fff;line-height:30px;">text</div>
            </div>
            <div>
                 <img u="image" src="<c:out value='${pageContext.servletContext.contextPath}'/>/img/img/home/04.jpg" />
                <div u=caption t="RTTS|T" d=-300 t2="B" class=captionOrange style="position:absolute; left:20px; top: 330px; width:300px; height:30px;"> 
                one of the most reliable sliders
                </div>
                <div u=caption t="T|IB" t2="T" d=-300 class="captionOrange"  style="position:absolute; left:20px; top: 100px; width:130px; height:30px;"> 
                All browsers
                </div>
                <div u=caption t="T|IB" t2=L d=-900 class="captionBlack"  style="position:absolute; left:60px; top: 170px; width:100px; height:30px;"> 
                supported
                </div>
                <div u="caption" t="WV|B" t2="T" d=-600 class=bricon style="position:absolute; top:50px; left: 220px; width:30px; height:30px; background-position: 0px 0px;"></div>
                <div u="caption" t="WV|B" t2="T" d="-1100" class=bricon style="position:absolute; top:100px; left: 220px; width:30px; height:30px; background-position: -30px 0px;"></div>
                <div u="caption" t="WV|B" t2="T" d="-1100" class=bricon style="position:absolute; top:150px; left: 220px; width:30px; height:30px; background-position: -60px 0px;"></div>
                <div u="caption" t="WV|B" t2="T" d="-1100" class=bricon style="position:absolute; top:200px; left: 220px; width:30px; height:30px; background-position: -90px 0px;"></div>
                <div u="caption" t="WV|B" t2="T" d="-1100" class=bricon style="position:absolute; top:250px; left: 220px; width:30px; height:30px; background-position: -120px 0px;"></div>
                <div u="caption" t="LISTH|R" t2="CLIP|TB" d=-600 class=captionOrange style="position: absolute; top: 40px; left: 280px; width: 180px;
                    height: 250px; text-align: left; line-height: 50px;">
                        &nbsp; Chrome&nbsp; &nbsp; &nbsp; 3+<br />
                        &nbsp; Firerfox&nbsp; &nbsp; &nbsp; 2+<br />
                        &nbsp; IE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6+<br />
                        &nbsp; Safari&nbsp; &nbsp; &nbsp; &nbsp; 3.1+<br />
                        &nbsp; Opera&nbsp; &nbsp; &nbsp; &nbsp;10+
                </div>
                <div u=caption t="TR" t2="T" d=-900 class="captionOrange"  style="position:absolute; left:700px; top: 40px; width:130px; height:30px;"> 
                All devices
                </div>
                <div u=caption t="R" t2=R d=-900 class="captionBlack"  style="position:absolute; left:780px; top: 55px; width:100px; height:30px;"> 
                supported
                </div>
                <div u="caption" t="T|IB" d=-900 style="position:absolute;left:525px;top:90px;width:220px;height:30px;font-size:28px;color:#fff;line-height:30px;">Windows Phone</div>
                <div u="caption" t="T|IB" t2="ZMF|10" d=-900 style="position:absolute;left:560px;top:160px;width:120px;height:30px;font-size:28px;color:#fff;line-height:30px;">Android</div>
                <div u="caption" t="T|IB" t2=R d=-900 style="position:absolute;left:760px;top:140px;width:60px;height:30px;font-size:28px;color:#fff;line-height:30px;">iOS</div>
                <img u="caption" t="T|IB" t2=B d=-900 src="<c:out value='${pageContext.servletContext.contextPath}'/>/img/img/home/moc-iphone.png" style="position:absolute;left:600px;top:230px;width:120px;height:80px;" />
                <img u="caption" t="RTTL|BR" d=-450 src="<c:out value='${pageContext.servletContext.contextPath}'/>/img/img/home/moc-ipad.png" style="position:absolute;left:750px;top:220px;width:77px;height:100px;" />
            </div>
        </div> 

        <!-- Navigator Skin Begin -->
        <style>
            /* jssor slider navigator skin 03 css */
            /*
            .jssorn03 div           (normal)
            .jssorn03 div:hover     (normal mouseover)
            .jssorn03 .av           (active)
            .jssorn03 .av:hover     (active mouseover)
            .jssorn03 .dn           (mousedown)
            */
            .jssorn03 div, .jssorn03 div:hover, .jssorn03 .av
            {
                background: url(../img/n03.png) no-repeat;
                overflow:hidden;
                cursor: pointer;
            }
            .jssorn03 div { background-position: -5px -4px; }
            .jssorn03 div:hover, .jssorn03 .av:hover { background-position: -35px -4px; }
            .jssorn03 .av { background-position: -65px -4px; }
            .jssorn03 .dn, .jssorn03 .dn:hover { background-position: -95px -4px; }
        </style>
        <!-- navigator container -->
        <div u="navigator" class="jssorn03" style="position: absolute; bottom: 16px; left: 6px;">
            <!-- navigator item prototype -->
            <div u="prototype" style="POSITION: absolute; WIDTH: 21px; HEIGHT: 21px; text-align:center; line-height:21px; color:White; font-size:12px;"><NumberTemplate></NumberTemplate></div>
        </div>
        <!-- Navigator Skin End -->
        
        <!-- Direction Navigator Skin Begin -->
        <style>
            /* jssor slider direction navigator skin 20 css */
            /*
            .jssord20l              (normal)
            .jssord20r              (normal)
            .jssord20l:hover        (normal mouseover)
            .jssord20r:hover        (normal mouseover)
            .jssord20ldn            (mousedown)
            .jssord20rdn            (mousedown)
            */
            .jssord20l, .jssord20r, .jssord20ldn, .jssord20rdn
            {
            	position: absolute;
            	cursor: pointer;
            	display: block;
                background: url(../img/d20.png) no-repeat;
                overflow:hidden;
            }
            .jssord20l { background-position: -3px -33px; }
            .jssord20r { background-position: -63px -33px; }
            .jssord20l:hover { background-position: -123px -33px; }
            .jssord20r:hover { background-position: -183px -33px; }
            .jssord20ldn { background-position: -243px -33px; }
            .jssord20rdn { background-position: -303px -33px; }
        </style>
        <!-- Arrow Left -->
        <span u="arrowleft" class="jssord20l" style="width: 55px; height: 55px; top: 123px; left: 8px;">
        </span>
        <!-- Arrow Right -->
        <span u="arrowright" class="jssord20r" style="width: 55px; height: 55px; top: 123px; right: 8px">
        </span>
        <!-- Direction Navigator Skin End -->
        <a style="display: none" href="http://www.jssor.com">jQuery Slideshow</a> 
    </div> 
    </td></tr>
   </table>
   
   
   
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
	
	/* Create menu model for additional elements */
	
	var menuModel_add = new DHTMLSuite.menuModel();
	menuModel_add.addItemsFromMarkup('additionalModel');
	menuModel_add.init();
	
	document.getElementById('textContent').onscroll = menuBar2.hideSubMenus;
	</script>
    <!-- Jssor Slider End --> 
</body> 
</html>










<!doctype html>
<html lang="en">
<head>
	<style>
		body { font-size: 62.5%; }
		label, input { display:block; }
		input.text { margin-bottom:12px; width:95%; padding: .4em; }
		fieldset { padding:0; border:0; margin-top:25px; }
		h1 { font-size: 1.2em; margin: .6em 0; }
		div#users-contain { width: 350px; margin: 20px 0; }
		div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
		div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
		.ui-dialog .ui-state-error { padding: .3em; }
		.validateTips { border: 1px solid transparent; padding: 0.3em; }
	</style>
	<script>
	$(function() {
		var name = $( "#username" ),
			email = $( "#email" ),
			password = $( "#password" ),
			allFields = $( [] ).add( name ).add( email ).add( password ),
			tips = $( ".validateTips" );

		function updateTips( t ) {
			tips
				.text( t )
				.addClass( "ui-state-highlight" );
			setTimeout(function() {
				tips.removeClass( "ui-state-highlight", 1500 );
			}, 500 );
		}

		function checkLength( o, n, min, max ) {
			if ( o.val().length > max || o.val().length < min ) {
				o.addClass( "ui-state-error" );
				updateTips( "Length of " + n + " must be between " +
					min + " and " + max + "." );
				return false;
			} else {
				return true;
			}
		}

		function checkRegexp( o, regexp, n ) {
			if ( !( regexp.test( o.val() ) ) ) {
				o.addClass( "ui-state-error" );
				updateTips( n );
				return false;
			} else {
				return true;
			}
		}

		$( "#dialog-form" ).dialog({
			autoOpen: false,
			height: 330,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					allFields.removeClass( "ui-state-error" );

					bValid = bValid && checkLength( name, "username", 3, 16 );
					bValid = bValid && checkLength( email, "email", 6, 80 );
					bValid = bValid && checkLength( password, "password", 5, 16 );

					bValid = bValid && checkRegexp( name, /^[a-z]([0-9a-z_])+$/i, "Username may consist of a-z, 0-9, underscores, begin with a letter." );
					// From jquery.validate.js (by joern), contributed by Scott Gonzalez: http://projects.scottsplayground.com/email_address_validation/
					bValid = bValid && checkRegexp( email, /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i, "eg. ui@jquery.com" );
					bValid = bValid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9" );

					if ( bValid ) {
						document.forms["signupnew"].action = "signup.html";
						document.forms["signupnew"].submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
					$( this ).dialog( "close" );
				}
			},
			close: function() {
				allFields.val( "" ).removeClass( "ui-state-error" );
			}
		});

		$( "#create-user" )
			.button()
			.click(function() {
				$( "#dialog-form" ).dialog( "open" );
			});
	});
















	$(function() {
		var loginId = $( "#loginId" ),
			passwords = $( "#passwords" ),
			allFieldss = $( [] ).add( name ).add( password ),
			tipss = $( ".validateTips" );

		function updateTips( t ) {
			tipss.text( t ).addClass( "ui-state-highlight" );
			setTimeout(function() {
				tipss.removeClass( "ui-state-highlight", 1500 );
			}, 500 );
		}

		function checkLength( o, n, min, max ) {
			if ( o.val().length > max || o.val().length < min ) {
				o.addClass( "ui-state-error" );
				updateTips( "Length of " + n + " must be between " +
					min + " and " + max + "." );
				return false;
			} else {
				return true;
			}
		}

		function checkRegexp( o, regexp, n ) {
			if ( !( regexp.test( o.val() ) ) ) {
				o.addClass( "ui-state-error" );
				updateTips( n );
				return false;
			} else {
				return true;
			}
		}

		$( "#dialog" ).dialog({
			autoOpen: false,
			height: 330,
			width: 350,
			modal: true,
			buttons: {
				"Submit": function() {
					var bValid = true;
					allFieldss.removeClass( "ui-state-error" );

					bValid = bValid && checkLength( loginId, "loginId", 3,50 );
					bValid = bValid && checkLength( passwords, "passwords", 5, 16 );

					if ( bValid ) {
						document.forms["logins"].action = "login.html";
						document.forms["logins"].submit();
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
					$( this ).dialog( "close" );
				}
			},
			close: function() {
				allFields.val( "" ).removeClass( "ui-state-error" );
			}
		});

		$( "#opener" ).button().click(function() {
				$( "#dialog" ).dialog( "open" );
		});
	});
	
	</script>
</head>
<body>

<div id="dialog" title="Login">
<form id="logins">
	<p class="validateTips">All form fields are required.</p>
	<fieldset>
		<label for="name">Login ID</label>
		<input type="text" name="loginId" id="loginId" class="text ui-widget-content ui-corner-all" value="ravindra.dahiya@yahoo.com" />
		<label for="password">Password</label>
		<input type="password" name="passwords" id="passwords" value="12345" class="text ui-widget-content ui-corner-all" />
	</fieldset>
	</form>
</div>

</body>
</html>





<script>

	$(function() {
		$( "#dialog" ).dialog({
			autoOpen: false,
			show: {
				effect: "blind",
				duration: 1000
			},
			hide: {
				effect: "explode",
				duration: 1000
			}
		});
		
	});
	
	
	$(function() {
		$( "#dialog-form" ).dialog({
			autoOpen: false,
			show: {
				effect: "blind",
				duration: 1000
			},
			hide: {
				effect: "explode",
				duration: 1000
			}
		});
	});
	</script>
	
	
	
<div id="dialog-form" title="Sign Up">
<form id="signupnew">
	<p class="validateTips">All form fields are required.</p>
	<fieldset>
		<label for="name">Name</label>
		<input type="text" name="username" id="username" class="text ui-widget-content ui-corner-all" />
		<label for="email">Email</label>
		<input type="text" name="email" id="email" value="" class="text ui-widget-content ui-corner-all" />
		<label for="password">Password</label>
		<input type="password" name="password" id="password" value="" class="text ui-widget-content ui-corner-all" />
	</fieldset>
	</form>
</div>
	
	
</head>
