
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="com.ravi.MyConstant.commonConstant"%>

<!DOCTYPE html>
<html> 
<head> 
    <script type="text/javascript" src="<c:out value='${pageContext.servletContext.contextPath}'/>/JS/jssor.core.js"></script>
    <script type="text/javascript" src="<c:out value='${pageContext.servletContext.contextPath}'/>/JS/jssor.utils.js"></script>
    <script type="text/javascript" src="<c:out value='${pageContext.servletContext.contextPath}'/>/JS/jssor.slider.js"></script>
    
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


</head>

<div id="mainContentainer">
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
	        <c:forEach items="${snaps}" var="snapp">
	            <div>
	                <img u="image" src="<c:out value='${pageContext.servletContext.contextPath}'/>/<%= commonConstant.homePageSnap %>${snapp.snap}" />
				    <c:forEach items="${snapp.constant}" var="snap">
		                <div u=caption t="${snap.sliderName}"  class="captionOrange"  style="position:absolute; left:${snap.left }px; top: ${snap.top}px; width:${snap.width}px; height:${snap.height}px;"> 
		               		${snap.content}  left:${snap.left }px; top: ${snap.top}px; width:${snap.width}px; height:${snap.height}px;
		                </div>
				    </c:forEach>
	            </div>
	        </c:forEach>
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
    
    
    	<script type="text/javascript">
	var menuModel = new DHTMLSuite.menuModel();
	menuModel.addItemsFromMarkup('menuModel');
	menuModel.setMainMenuGroupWidth(00);	
	menuModel.init();
    </script>
   
</body> 