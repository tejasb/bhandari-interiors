<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 <%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Bhandari Interiors</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/slide.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
 <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
 <script src="js/jquery.slides.min.js"></script>
 
   <script>
    /*$(function() {
      $('#slides').slidesjs({
        width: 1000,
        height: 352,
        navigation: false
      });
    });*/
    
    $(function() {
        $('#slides').slidesjs({
          width: 1000,
          height: 352,
          play: {
            active: true,
            auto: true,
            interval: 4000,
            swap: true
          }
        });
      });
    alert("<c:out value = '${username}'></c:out>");
  </script>
 
</head>

<body>

<div class="header-back">
<div class="logo-head">
<div class="logo">
<a href="index.html"><img src="images/logo.gif" alt="" border="0" /></a>

<!-- Div End Logo -->
Welcome <c:choose> <c:when test='${not empty username}'>
	<c:out value='${username}'></c:out>
</c:when><c:otherwise>Guest!!</c:otherwise></c:choose>
</div>

<c:choose>
 <c:when test="${empty username}">
<div class="user-guest">
<%-- Login
<div id="login-error">
 
 
${error}</div>  --%>   
<c:if test="${not empty error}">
	<scsript>alert("${error}");</scsript>
</c:if>
<form action="j_spring_security_check" method="post" >
<table>
	<tr>
		<td><label for="j_username">Username</label></td>
		<td><input id="j_username" name="j_username" type="text" /></td>
	</tr>
	<tr>
		<td><label for="j_password">Password</label></td>
		<td><input id="j_password" name="j_password" type="password" /></td>
	</tr>
	<tr>
		<td></td>
		<td colspan="0" align="right"><input  type="submit" value="Login"/>  </td>
	</tr>
</table>
</form>
<!-- End Div user -->
</div>
</c:when>
<c:otherwise>
<div class="user-login">
<span><a href="/bhandari-interiors/logout">Logout</a></span>
</div>
</c:otherwise>
</c:choose>

<div class="right-nav">
<ul>
<li><a class="current">Home</a></li>
 <li><a href="about-us.html">About Us</a></li>
<li><a href="gallery">Gallery</a></li>
 <li><a href="gallery">Services</a></li>
 <li><a href="support.html">Support</a></li>
  <li><a href="contact-us.html	">Contact Us</a></li>
</ul>

</div>


<!-- Div- ENd logo-head-->
</div>


<div class="header">

<!-- div class="nav-bar">
<ul>
       <li><a class="current">Home</a></li>
        <li><a href="about-us.html">About Us</a></li>
        <li><a href="projects.html">Projects</a></li>
        <li><a href="services.html">Services</a></li>
        <li><a href="support.html">Support</a></li>
        <li class="last"><a href="contact-us.html">Contact Us</a></li>
</ul>


</div> -->

<!-- div class="right-header">  -->
  <div class="container">
    <div id="slides">
      <img src="images/furnitures/slide/example-slide-1.jpg" alt="Photo by: Missy S Link: http://www.flickr.com/photos/listenmissy/5087404401"></img>
      <img src="images/furnitures/slide/example-slide-2.jpg" alt="Photo by: Daniel Parks Link: http://www.flickr.com/photos/parksdh/5227623068"></img>
      <img src="images/furnitures/slide/example-slide-3.jpg" alt="Photo by: Mike Ranweiler Link: http://www.flickr.com/photos/27874907@N04/4833059991"></img>
      <img src="images/furnitures/slide/example-slide-4.jpg" alt="Photo by: Stuart SeegerLink: http://www.flickr.com/photos/stuseeger/97577796"></img>
      <a href="#" class="slidesjs-previous slidesjs-navigation"><i class="icon-chevron-left icon-large"></i></a>
      <a href="#" class="slidesjs-next slidesjs-navigation"><i class="icon-chevron-right icon-large"></i></a>
      
    </div>
  </div>
<!-- /div> -->

</div>
<!-- Div End header-back -->
</div>


<div id="body-part">
<div class="top-body">
<h1><span>Welcome</span> to Bhandari Interiors</h1>
<h2>Making Quality Interiors since 1999</h2>
<p> We at Bhandari Interiors believe in making quality homes at affordable price.</p>

</div>


<div class="img-box"><img src="images/img_01.gif" alt="" /></div>
<div style="clear:both;"></div>
<div class="mid-body">
<ul>
<li><img src="images/ls-1.gif" alt="" /></li>
<li><img src="images/ls-2.gif" alt="" /></li>
<li><img src="images/ls-3.gif" alt="" /></li>
<li><img src="images/ls-4.gif" alt="" /></li>
<li class="fnal"><img src="images/ls-5.gif" alt="" /></li>
</ul>

<h2>Services that we provide</h2>
<p> We provide all the services which cater your varied interior needs.</p>

</div>


<div id="footer">
<b><a href="#">Terms of Use</a> | <a href="privacy.html">Privacy Statement</a> </b>
&copy; Bhandari Interiors. All rights reserved
</div>

</div>


</body>
</html>
