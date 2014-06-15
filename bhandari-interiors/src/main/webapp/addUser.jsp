<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 <%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<script src="js/jquery-1.9.0.min.js"></script>
<script src="js/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.js"></script>
 <script src="js/com/interiors/user/userOperation.js"></script>
 
<!--    <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css"> -->
<!--   <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script> -->
 <script>
		
		  $(function() {
			    function log( message ) {
			      $( "<div>" ).text( message ).prependTo( "#log" );
			      $( "#log" ).scrollTop( 0 );
			    }
			 
			    $("#partyName").autocomplete({
			      source: function( request, response ) {
			        $.ajax({
			          url: "/bhandari-interiors/getPartySearchList",
			          dataType: "jsonp",
			          data: {
			            featureClass: "P",
			            style: "full",
			            maxRows: 12,
			            name_startsWith: request.term
			          },
			          success: function( data ) {
			            response( $.map( data.geonames, function( item ) {
			              return {
			                label: item.name + (item.adminName1 ? ", " + item.adminName1 : "") + ", " + item.countryName,
			                value: item.name
			              }
			            }));
			          }
			        });
			      },
			      minLength: 2,
			      select: function( event, ui ) {
			        log( ui.item ?
			          "Selected: " + ui.item.label :
			          "Nothing selected, input was " + this.value);
			      },
			      open: function() {
			       // $( this ).removeClass( "ui-corner-all" ).addClass( "ui-corner-top" );
			      },
			      close: function() {
			       //$( this ).removeClass( "ui-corner-top" ).addClass( "ui-corner-all" );
			      }
			    });
			  });
</script>

<tiles:insertDefinition name="defaultTemplate">


    <tiles:putAttribute name="body">
 
 <div class = "header">
  <form name="userInfo" id = "userInfo">
<table width="450px"  align="center">
<tr>
 <td valign="top">
  <label for="userName">User Name </label>
 </td>
 <td valign="top">
  <input  type="text" name="userName" maxlength="50" size="50"/>
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="password">Password</label>
 </td>
 <td valign="top">
  <input  type="password" name="password" maxlength="50" size="50"/>
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="partyId">Party Id</label>
 </td>
 <td valign="top">
  <input  type="text" name="partyId" maxlength="50" size="50"/>
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="partyName">Party Name</label>
 </td>
 <td valign="top">
  <input  type="text" name="partyName" id = "partyName" maxlength="50" size="50"/>
 </td>
</tr> 
<tr>
 <td valign="top">
  <label for="access">User Role</label>
 </td>
 <td valign="top">
 <SELECT NAME="access" SIZE="1">
	<OPTION SELECTED value="1">Admin
	<OPTION value = "2">User
</SELECT>
 </td>
</tr>
<tr>
<td align="right">
  <input type="button" value="Abandon" class = "buttonCss" onClick = "resetFields()"/>
 </td>
 <td>
  <input type="button" value="Save" class = "buttonCss" onClick = "ajaxRequestForAddUser()"/>
 </td>
</tr>
</table>
</form>
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
 