<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.ravi.MyConstant.commonConstant"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		    <title><%= commonConstant.title %>
            <tiles:insertAttribute name="title" ignore="true" />
            </title>
		    <link rel="shortcut icon" href="<c:out value='${pageContext.servletContext.contextPath}'/>/img/img/home/logo.png"/>
    </head>
    <body>
        <table border="0" cellpadding="2" cellspacing="2" align="center" width="1000" style="width: 1000">
            <tr>
                <td height="80px;" colspan="2">
                    <tiles:insertAttribute name="header" />
                </td>
            </tr>
            <tr>
                <td height="">
                    <tiles:insertAttribute name="menu" />
                </td>
            </tr>
            <tr>
                <td width="350">
                    <tiles:insertAttribute name="body" />
                </td>
            
            </tr>
            <tr>
                <td height="30" colspan="2">
                    <tiles:insertAttribute name="footer" />
                </td>
            </tr>
        </table>
    </body>
</html>
