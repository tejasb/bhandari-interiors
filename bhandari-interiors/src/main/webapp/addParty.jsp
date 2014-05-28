<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 <%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
 <script src="js/com/interiors/party/partyOperation.js"></script>

<tiles:insertDefinition name="defaultTemplate">


    <tiles:putAttribute name="body">
 <div class = "header">
   <div class="container">
    <!-- <div id="slides">
      <img src="images/furnitures/slide/example-slide-1.jpg" alt="Photo by: Missy S Link: http://www.flickr.com/photos/listenmissy/5087404401"></img>
      <img src="images/furnitures/slide/example-slide-2.jpg" alt="Photo by: Daniel Parks Link: http://www.flickr.com/photos/parksdh/5227623068"></img>
      <img src="images/furnitures/slide/example-slide-3.jpg" alt="Photo by: Mike Ranweiler Link: http://www.flickr.com/photos/27874907@N04/4833059991"></img>
      <img src="images/furnitures/slide/example-slide-4.jpg" alt="Photo by: Stuart SeegerLink: http://www.flickr.com/photos/stuseeger/97577796"></img>
      <a href="#" class="slidesjs-previous slidesjs-navigation"><i class="icon-chevron-left icon-large"></i></a>
      <a href="#" class="slidesjs-next slidesjs-navigation"><i class="icon-chevron-right icon-large"></i></a>
      
    </div> -->

<div id="panel-1" class="med panel1Div">
 <form name="partyInfo" id = "partyInfo">
<table width="450px"  align="center">
<tr>
 <td valign="top">
  <label for="partyName">Party Name *</label>
 </td>
 <td valign="top">
  <input  type="text" name="partyName" maxlength="50" size="50">
 </td>
</tr>
 
<tr>
 <td valign="top">
  <label for="partyAddressLine1">Party Address Line1 *</label>
 </td>
 <td valign="top">
  <input  type="text" name="partyAddressLine1" maxlength="50" size="50">
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="partyAddressLine2">Party Address Line2 *</label>
 </td>
 <td valign="top">
  <input  type="text" name="partyAddressLine2" maxlength="80" size="50">
 </td>
 </tr>
 <tr>
 <td valign="top">
  <label for="partyEmailId">Email Address *</label>
 </td>
 <td valign="top">
  <input  type="text" name="partyEmailId" maxlength="80" size="30">
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="partyMobileNo">Party Mobile No: </label>
 </td>
 <td valign="top">
  <input  type="text" name="partyMobileNo" maxlength="30" size="30">
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="partyTelNo">Party Tel No *</label>
 </td>
 <td valign="top">
	<input  type="text" name="partyTelNo" maxlength="30" size="30">
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="partyTypeId">Party Type *</label>
 </td>
 <td valign="top">
 <SELECT NAME="partyTypeId" SIZE="1">
	<OPTION SELECTED value="1">Customer
	<OPTION value="2">Supplier
	<OPTION value="3">Contractor
</SELECT>
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="partyDetailTypeId">Party Detail Type</label>
 </td>
 <td valign="top">
 <SELECT NAME="partyDetailTypeId" SIZE="1">
	<OPTION SELECTED value="1">Customer
	<OPTION value="2">Supplier
	<OPTION value="3">Contractor
</SELECT>
 </td>
</tr>

<tr>
<td align="right">
  <input type="submit" value="Abandon" class = "buttonCss" onClick = "resetFields()"/>
 </td>
 <td>
  <input type="button" value="Save" class = "buttonCss" onclick="ajaxRequestForAddParty()"/>
 </td>
</tr>
</table>
</form>
  	</div>
  </div>
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
<!-- Div End header-back -->

 
 
    </tiles:putAttribute>
</tiles:insertDefinition>
 