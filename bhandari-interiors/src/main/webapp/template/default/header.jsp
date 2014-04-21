<!-- <div class="header">I am the header</div> -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 <%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
			<c:choose>
				<c:when test="${not empty MENU_LIST}">
					<c:forEach var="menu" items="${MENU_LIST}">
						<li><a href="${menu.href}"><c:out value="${menu.label}"></c:out></a></li>
							<c:if test= "${not empty menu.label && menu.label eq 'Operations'}">
							
							</c:if>
							<c:out value="${vault.partyOrganisationInfo.organisationName}"></c:out>
						</option>
					</c:forEach>
				</c:when>
			</c:choose>

			<li><a style="color:#FFA500;">Home</a></li>
 
<li><a href="gallery">Gallery</a></li>
 <li><a href="gallery">Services</a></li>
 <li><a href="support.html">Support</a></li>
  <li><a href="contactUs">Contact Us</a></li>
  <c:if test="${not empty ROLE && ROLE eq 'ROLE_ADMIN'}">
	<li><a href="operations">Operations</a></li>
</c:if>
</ul>

</div>


<!-- Div- ENd logo-head-->
</div>
