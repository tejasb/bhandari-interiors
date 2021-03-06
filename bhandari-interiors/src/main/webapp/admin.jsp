<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 <%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<tiles:insertDefinition name="defaultTemplate">

    <tiles:putAttribute name="body">
 
 <div class = "header">
   			<h2>Operations</h2>
   			<p><a href = "Party?operation=addUser">Add User</a></br></p>
			<p><a href = "Party?operation=addParty">Add Party</a></br></p>
			<p><a href = "Party?operation=viewParty">View Party</a></br></p>
			<p><a href = "Party?operation=searchParty">Search Party</a></br></p>
			<p><a href = "Party?operation=searchOutstandingDues">Party Outstanding Dues</a></br></p>
			<p><a href = "Party?operation=viewOutstandingDues">View Party Outstanding Dues Details</a></br></p>
			<p><a href = "Party?operation=createPartyBill">Party Billing</a></br></p>
  </div>
<!-- /div> -->

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
 </div>

 
 
    </tiles:putAttribute>
</tiles:insertDefinition>
 