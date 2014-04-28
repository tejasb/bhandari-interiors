<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insertDefinition name="defaultTemplate">
   <tiles:putAttribute name="body">
 
 <div class = "header">
  	<p>You can contact us at the following address</p>
  	<p>Bhandari Interiors</p>
  	<p>16/221 Prabhu Bhuvan</p>
  	<p>Lady Jamshedji Road</p>
  	<p>Shivaji park,Mahim</p>
  	<p>Mumbai - 400016</p>
  	
  	<h1><span>Contact</span> Details</h1>
  	<p>Mob: +919892657998</p>
  	<p>Landline: 022-24318930</p>
  	
  	<p>You can fill the below form. Our executive will contact you within 24 hours</p>
  	
  	<form name="addContactUsForm">
<table width="450px"  align="center">
</tr>
<tr>
 <td valign="top">
  <label for="party_name">Name *</label>
 </td>
 <td valign="top">
  <input  type="text" name="party_name" maxlength="50" size="50">
 </td>
</tr>
 
<tr>
 <td valign="top"">
  <label for="addressLineFirst">Address Line1 *</label>
 </td>
 <td valign="top">
  <input  type="text" name="addressLineFirst" maxlength="50" size="50">
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="addressLineSecond">Address Line2 *</label>
 </td>
 <td valign="top">
  <input  type="text" name="addressLineSecond" maxlength="80" size="50">
 </td>
 </tr>
 <tr>
 <td valign="top">
  <label for="email">Email Address *</label>
 </td>
 <td valign="top">
  <input  type="text" name="email" maxlength="80" size="30">
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="mobile">Mobile No: </label>
 </td>
 <td valign="top">
  <input  type="text" name="mobile" maxlength="30" size="30">
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="telephone">Tel No *</label>
 </td>
 <td valign="top">
	<input  type="text" name="telephone" maxlength="30" size="30">
 </td>
</tr>

<tr>
<td align="right">
  <input type="submit" value="Clear" class = "buttonCss">
 </td>
 <td>
  <input type="submit" value="Save" class = "buttonCss">
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
 