<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>jQuery UI Autocomplete - Remote datasource</title>
  <!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css"> -->
  <script src="js/jquery-1.9.0.min.js"></script>
  <script src="js/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.js"></script>
  <!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
  <!-- <style>
  .ui-autocomplete-loading {
    background: white url('images/ui-anim_basic_16x16.gif') right center no-repeat;
  }
  </style> -->
  <script>
  $.ajaxSetup ({  
	    cache: false  
	});
  $(function() {
  $("#birds").autocomplete({
		source : "/bhandari-interiors/getPartnerSearchList",
		minLength: 3,
		cacheLength: 0,
		response: function( event, ui ) {
				var customerCodeArray = ui.content;
		},
		focus: function( event, ui ) {
			 if(ui.item.status !== "N"){
				 $("#customerName").val(ui.item.custName);	 
			 }else{
				 $("#customerName").val('');	 
			 }
			 
			return false;
		},
		 select : function(event, ui) {
			 if(ui.item.status !== "N"){
					$("#customerName").val(ui.item.custName);
					$("#customerCode").val(ui.item.code);
					//validateCodeSearchInput("false");
			 }else{
				 var defaultCustName = $('#defaultCustName').val();
				 var custCodeString  = defaultCustName.substr(0,defaultCustName.indexOf(' ')); 
				 var custNameString = defaultCustName.substr(defaultCustName.indexOf(' ')+1);
				 $("#customerCode").val(custCodeString);
				 $("#customerName").val(custNameString); 
				 $('#deliveryAddress').focus();	
			 }
			 return false;
		},
		change: function( event, ui ) {
			return false;
		},
	});
  });
  </script>
</head>
<body>
 
<div class="ui-widget">
  <label for="birds">Birds: </label>
  <input id="birds">
</div>
 
<div class="ui-widget" style="margin-top:2em; font-family:Arial">
  Result:
  <div id="log" style="height: 200px; width: 300px; overflow: auto;" class="ui-widget-content"></div>
</div>
 
 
</body>
</html>