<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
	function callAjaxFunction() {
		var userName = $("#userName").val();
		var password = $("#password").val();
		$.ajax({
	        type: 'post',
	        url: "/bhandari-interiors/access",
	        data: {userName : userName, password : password},
	        async: false,
	        success: function (response) {
	        	var obj = jQuery.parseJSON(response);
	            alert(obj.TEST);
	        }
	    });
	}
</script>
</head>
<body>
<form>
    <input type = "text" id = "userName" />
    <input type = "password" id = "password"/>
	<input type="button" value="Submit" onclick="callAjaxFunction()"/>
</form>
</body>
</html>