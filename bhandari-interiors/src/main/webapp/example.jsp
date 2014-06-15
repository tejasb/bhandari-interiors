<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>jQuery UI Autocomplete - Remote JSONP datasource</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  <!-- <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script> -->
  <script src="js/jquery-1.9.0.min.js"></script>
  <script src="js/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.js"></script>
  <style>
  #city { width: 25em; }
  </style>
  <script>
  $(function() {
		 var customerCodeArray = "";
	    function log( message ) {
	      $( "<div>" ).text( message ).prependTo( "#log" );
	      $( "#log" ).scrollTop( 0 );
	    }
	    /* var availableTags = [
	                         "ActionScript",
	                         "AppleScript",
	                         "Asp",
	                         "BASIC",
	                         "C",
	                         "C++",
	                         "Clojure",
	                         "COBOL",
	                         "ColdFusion",
	                         "Erlang",
	                         "Fortran",
	                         "Groovy",
	                         "Haskell",
	                         "Java",
	                         "JavaScript",
	                         "Lisp",
	                         "Perl",
	                         "PHP",
	                         "Python",
	                         "Ruby",
	                         "Scala",
	                         "Scheme"
	                       ]; */
   	var availableTags =   [
   	                                     {
  	                                      value: "Tejas",
   	                                      label: "Tejas",
   	                                      partyName: "Tejas",
   	                                      partyId: "1"
   	                                    },
   	                                    {
    	                                      value: "Tejas",
       	                                      label: "Tejas",
       	                                      partyName: "Tejas",
       	                                      partyId: "1"
   	                                    },
   	                                    {
    	                                      value: "Tejas",
       	                                      label: "Tejas",
       	                                      partyName: "Tejas",
       	                                      partyId: "1"
   	                                    }
   	                                  ];
	 
	    /* $( "#city" ).autocomplete({
	      source: function( request, response ) {
	        $.ajax({
	          url: "/bhandari-interiors/getPartySearchList",
	          dataType: "jsonp",
	          async:false,
	          data: {
	            featureClass: "P"
	          },
	          success: function( data ) {
	            response( $.map( data, function( item ) {
	              return {
	                label: item.partyName + (item.partyId ? ", " + item.partyId : "") + ", " + item.partyId,
	                value: item.partyName
	              }
	            }));
	          }
	        });
	      },
	      
	      open: function() {
	        $( this ).removeClass( "ui-corner-all" ).addClass( "ui-corner-top" );
	      },
	      close: function() {
	        $( this ).removeClass( "ui-corner-top" ).addClass( "ui-corner-all" );
	      } 
	    }); */
	    
	    $( "#city" ).autocomplete({
	        source: "/bhandari-interiors/getPartySearchList",
	       //source: availableTags,
	        minLength: 2,
	        select: function( event, ui ) {
	          log( ui.item ?
	            "Selected: " + ui.item.partyId + " aka " + ui.item.partyName :
	            "Nothing selected, input was " + this.value );
	          return false;
	        }
	      }).data("ui-autocomplete")._renderItem = function(ul, item) {
			return $( "<li>" )
	        .append( "<a>" + item.partyId + "<br>" + item.partyName + "</a>" )
	        .appendTo( ul );

		};
	  });
  </script>
</head>
<body>
 
<div class="ui-widget">
  <label for="city">Your city: </label>
  <input id="city">
  Powered by <a href="http://geonames.org">geonames.org</a>
</div>
 
<div class="ui-widget" style="margin-top:2em; font-family:Arial">
  Result:
  <div id="log" style="height: 200px; width: 300px; overflow: auto;" class="ui-widget-content"></div>
</div>
 
 
</body>
</html>