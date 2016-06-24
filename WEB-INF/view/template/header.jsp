
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html> 
<head>
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<script type="text/javascript">
	function rraamm() {
		$(function() {
			$( "input[type=submit], a, button" ).button()
				.click(function( event ) {
				});
		});
	
	}
	
	$(function() {
		$( "input[type=submit], a, button" ).button()
			.click(function( event ) {
			});
	});
	
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
	
	
	
</head>
<body>
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
	    <td align="right" style="margin: auto">
		    <table align="right">
			  <tr >
			    <c:if test="${userName ne null && !empty userName }" >
				    <td nowrap="nowrap"><p align="center"><font size="4px;" color="blue"><b>${userName}</b></font></p> </td>
				    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td nowrap="nowrap"><a href="signout.html" id="signout">Sign Out</a></td>
			    </c:if>
			    <c:if test="${userName eq null or empty userName }" >
					<td nowrap="nowrap"><button id="opener">Login</button></td>
				    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td nowrap="nowrap"><button id="create-user">Sign Up</button></td>
			    </c:if>
			  </tr>
			</table>
		</td>
	  </tr>
	</table>
	
<span id="hideContent" style="display: none;">	
	
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
		
	
	

	<div id="dialog" title="Login">
	<form id="logins">
		<p class="validateTips">All form fields are required.</p>
		<fieldset>
			<label for="name">Login ID</label>
			<input type="text" name="loginId" id="loginId" class="text ui-widget-content ui-corner-all" />
			<label for="password">Password</label>
			<input type="password" name="passwords" id="passwords" value="" class="text ui-widget-content ui-corner-all" />
		</fieldset>
		</form>
	</div>
</span>	
	
	
</body>

</html>