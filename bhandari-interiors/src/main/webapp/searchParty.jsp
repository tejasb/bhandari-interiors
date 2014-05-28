<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 <%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<tiles:insertDefinition name="defaultTemplate">


    <tiles:putAttribute name="body">
 
 
 
        <%-- <div class="body">
            <h1>Home page !</h1>
 
            <p>The time on the server is ${serverTime}.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
                magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</P>
        </div> --%>
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

 <form name="searchPartyForm" method = "post" action="/searchParty">
<table width="700px"  align="center">
</tr>
<tr>
 <td valign="top">
  <label for="partyId">Party ID *</label>
 </td>
 <td valign="top">
  <input  type="text" name="party_id" maxlength="50" size="50">
 </td>
 <td valign="top"">
  <label for="partyName">Party Name *</label>
 </td>
 <td valign="top">
  <input  type="text" name="partyName" maxlength="50" size="50">
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="partyType">Party Type *</label>
 </td>
 <td valign="top">
 <SELECT NAME="partyType" SIZE="1">
	<OPTION SELECTED>Customer
	<OPTION>Supplier
	<OPTION>Contractor
</SELECT>
 </td>
 <td valign="top">
  <label for="partyDetailType">Party Detail Type *</label>
 </td>
 <td valign="top">
 <SELECT NAME="partyDetailType" SIZE="1">
	<OPTION SELECTED>Customer
	<OPTION>Supplier
	<OPTION>Contractor
</SELECT>
 </td>
</tr>
<tr>
<td align="right" colspan = "2">
  <input type="button" value="Abandon" class = "buttonCss">
 </td>
 <td>
  <input type="submit" value="Save" class = "buttonCss">
 </td>
</tr>
</table>
</form>

<table id="party-data-table"  align="center">
	<thead>
		<tr>
			<th>Party Id</th>
			<th>Party name</th>
			<th>Party Type</th>
			<th>Party Detail Type</th>
		</tr>
	</thead>
</table>

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

<script>
/* var data = [
            {
              "party_id": "1",
              "party_name": "Sanket Sawant",
              "party_type": "Customer",
              "party_detail_type": "NA"
            },
            {
                "party_id": "2",
                "party_name": "Prathamesh Save",
                "party_type": "Customer",
                "party_detail_type": "NA"
            }
          ];

          $('#party-data-table').simple_datagrid(
            {
              data: data
            }
          ); */
          function searchParty() {
	          var form = $('#searchPartyForm');
	          //new ajaxLoader("body");
	          $.ajax({
	                 
	                 url : "/bhandari-interiors/searchPartyQuery",
	                 data : form.serialize(),
	                 headers:headers,
	                 type : 'post',
	                 cache    : false,
	                 success : function(response) {
	              	   ResetSessionTime();
	                        $("#ajax_loader").remove();
	                        var jsonObject = $.parseJSON(response);
	                        if (jsonObject.IS_ERROR == "true") {
	                              $('#tableFieldSet').hide();
	                              $('#viewButton').hide();
	                              $('#printButton').hide();
	                              $('#amendButton').hide();
	                              $('#refreshButton').hide();
	                              noRecordsFound();
	                        } else {
	                              if(jsonObject.IS_ERROR == "false"){
	                                     $('#searchTableData').val(response);
	                                     $('#tableFieldSet').show();
	                                     $('#buttonFieldSet').show();
	                                     $('#viewButton').hide();
	                                     $('#printButton').hide();
	                                     $('#amendButton').hide();
	                                     $('#refreshButton').show();
	                                     showTable(jsonObject);
	                              }
	                        }
	                 },
	                 error: function (response, e) {
	      	   	        if (response.status == 403 || response.status == 400) {
	      	   	            //window.location = "/origin/errorPage403";
	      	   	        }
	      	   	    }
	          });
	          
	          var data = 
	          $('#demo-table').simple_datagrid('loadData', data);
          }
</script>
 
 
    </tiles:putAttribute>
</tiles:insertDefinition>
 