<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Bhandari Interiors</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/slide.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
 <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
 		<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
		<script src="js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
 <script src="js/jquery.slides.min.js"></script>

 <style type="text/css" media="screen">
 * { margin: 0; padding: 0; }
			
			body {
				background: #282828;
				font: 62.5%/1.2 Arial, Verdana, Sans-Serif;
				padding: 0 20px;
			}
			
			h1 { font-family: Georgia; font-style: italic; margin-bottom: 10px; }
			
			h2 {
				font-family: Georgia;
				font-style: italic;
				margin: 25px 0 5px 0;
			}
			
			p { font-size: 1.2em; }
			
			ul li { display: inline; }
			
			.wide {
				border-bottom: 1px #000 solid;
				width: 4000px;
			}
			
			.fleft { float: left; margin: 0 20px 0 0; }
			
			.cboth { clear: both; }
			
			/*#main {
				background: #fff;
				margin: 0 auto;
				padding: 30px;
				width: 1000px;
			}*/
 </style>
</head>

<body>

<div class="header-back">
<div class="logo-head">
<div class="logo">
<a href="welcome"><img src="images/logo.gif" alt="" border="0" /></a>

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
	<script>alert("${error}");</script>
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
<li><a class="welcome">Home</a></li>
 <li><a href="about-us.html">About Us</a></li>
<li><a href="gallery">Gallery</a></li>
 <li><a href="gallery">Services</a></li>
 <li><a href="support.html">Support</a></li>
  <li><a  style="color:#FFA500;">Contact Us</a></li>
    <li><a href="operations">Operations</a></li>
</ul>

</div>


<!-- Div- ENd logo-head-->
</div>


<div class="header">
			<h2>Gallery</h2>
			<ul class="gallery clearfix">
				<li><a href="images/furnitures/slide/example-slide-1.jpg" rel="prettyPhoto[gallery1]" title="You can add caption to pictures. You can add caption to pictures. You can add caption to pictures."><img src="images/furnitures/slide/example-slide-1.jpg" width="60" height="60" alt="Red round shape" /></a></li>
				<li><a href="images/furnitures/slide/example-slide-2.jpg" rel="prettyPhoto[gallery1]"><img src="images/furnitures/slide/example-slide-2.jpg" width="60" height="60" alt="Nice building" /></a></li>
				<li><a href="images/furnitures/slide/example-slide-3.jpg" rel="prettyPhoto[gallery1]"><img src="images/furnitures/slide/example-slide-3.jpg" width="60" height="60" alt="Fire!" /></a></li>
				<li><a href="images/furnitures/slide/example-slide-4.jpg" rel="prettyPhoto[gallery1]"><img src="images/furnitures/slide/example-slide-4.jpg" width="60" height="60" alt="Rock climbing" /></a></li>
				
			</ul>

			<!-- <h2>Picture alone</h2>
			<ul class="gallery clearfix">
				<li><a href="images/furnitures/slide/example-slide-1.jpg" rel="prettyPhoto" title="&lt;a href=&#x27;http://www.google.ca&#x27; target=&#x27;_blank&#x27; &gt;This will open Google.com in a new window&lt;/a&gt;"><img src="images/furnitures/slide/example-slide-1.jpg" width="60" height="60" alt="Picture alone 1" /></a></li>
			</ul>
 -->

			</div>

<!-- Div End header-back -->
</div>

<div id="footer">
<b><a href="#">Terms of Use</a> | <a href="privacy.html">Privacy Statement</a> </b>
&copy; Bhandari Interiors. All rights reserved
</div>



</body>
</html>
