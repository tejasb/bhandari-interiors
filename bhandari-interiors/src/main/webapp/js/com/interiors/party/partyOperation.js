function ajaxRequestForAddParty(){

	var headers = {};
    var form = $('#partyInfo');
    $.ajax({
           
           url : "/bhandari-interiors/addParty",
           data : form.serialize(),
           headers:headers,
           type : 'post',
           cache    : false,
           success : function(response) {
                  var jsonObject = $.parseJSON(response);
                  partyResponse(jsonObject);
                 /* if (jsonObject.IS_ERROR == "true") {
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
                  }*/
           },
           error: function (response, e) {
	   	        if (response.status == 403 || response.status == 400) {
	   	            //window.location = "/origin/errorPage403";
	   	        }
	   	    }
    });
}

function partyResponse(jsonObject){
	var $dialog = getAjaxDialog();
	
    /*$dialog
        .html("</br></br>No orders found for the entered search criteria");*/
	 $dialog
        .html("</br></br> Party Id" + jsonObject.PARTY_ID);
	$dialog
    .html("</br></br>" + jsonObject.MESSAGE);
	
	if (jsonObject.IS_ERROR == "false") {
		alert(jsonObject.MESSAGE + ". Party Id is - " + jsonObject.PARTY_ID);
		resetFields();
	} else if (jsonObject.IS_ERROR == "false") {
		alert(jsonObject.MESSAGE);
	}
	
    /*$dialog.dialog({
        title: "Party Info",
        autoHeight: false,
        height: 150,
        modal: true,
        width: 350,
        closeOnEscape: false,
        resizable: false,
        buttons: {
            "Ok": function () {
            	
                $(this).dialog("close");
                //document.getElementById('customerOrderRef').focus();
            },      
        },
        create: function (event, ui) {
        	dialogUIDesign($(this));
        }
    });*/
}


function getAjaxDialog() {
    var $dialog = $("#ajax_dialog");

    if (!$dialog.size())
        $dialog = $('<div id="ajax_dialog" style="display:none;"></div>')
            .appendTo('body');

    return $dialog;
}

function dialogUIDesign(dialogObject){
	
	dialogObject.parents(".ui-dialog:first").find(".ui-dialog-buttonpane")
	    .css("border-width", 0);
	dialogObject.parents(".ui-dialog").css("padding", 0);
	dialogObject.parents(".ui-dialog").css("border-width", "3px");
	dialogObject.parents(".ui-dialog").removeClass('ui-corner-all');
	dialogObject.parents(".ui-dialog").find(".ui-dialog-titlebar")
	    .removeClass('ui-corner-all');
	dialogObject.parents(".ui-dialog").find(".ui-dialog-buttonpane").find(
	    ".ui-dialog-buttonset").css("text-align", "center");
	dialogObject.parents(".ui-dialog").find(".ui-dialog-buttonpane").find(
	    ".ui-dialog-buttonset").css("float", "none");
	dialogObject.parents(".ui-dialog").find(".ui-dialog-titlebar-close")
	    .css("visibility", "hidden");
	dialogObject.parents(".ui-dialog").css("border-color", "#2E2EFE");
	dialogObject.parents(".ui-dialog").find(".ui-dialog-titlebar").css(
	    "background-image", "none");
	dialogObject.parents(".ui-dialog").find(".ui-dialog-titlebar").css(
	    "background-color", "#2E2EFE");
	dialogObject.parents(".ui-dialog").find(".ui-dialog-titlebar").css(
	    "color", "white");
	dialogObject.parents(".ui-dialog").find(".ui-dialog-titlebar").css(
	    "border-color", "#2E2EFE");
	dialogObject.parents(".ui-dialog").find(".ui-dialog-titlebar-close")
	    .css("display", "none");
	
}

function resetFields() {
	document.getElementById('partyInfo').action = "operations";
    document.getElementById('partyInfo').method = 'POST';
    document.getElementById('partyInfo').submit();
}

$("#partyId").autocomplete({	
	source : "/bhandari-interiors/getPartySearchListForSearch",
	minLength: 1,
	cacheLength: 0,
	response: function( event, ui ) {
			customerCodeArray = ui.content;
	},
	open : function() {
		// After menu has been opened, set width
		$('.ui-menu').width(200);
	},
	focus: function( event, ui ) {
		 if(ui.item.status !== "N"){
			 $("#partyId").val(ui.item.code);	 
		 }else{
			 $("#partyId").val('');	
		 }
		return false;
	},
	 select : function(event, ui) {
		 if(ui.item.status !== "N"){
				$("#partyName").val(ui.item.partyName);
				$("#partyId").val(ui.item.partyId);
		 }
		 //validateCodeSearchInput("true"); //sending a parameter to know if code should be checked or name
		 return false;
	},
	change: function( event, ui ) {
		/* if($("#defaultCustName").val() !== ""){
			var defaultCustName = $('#defaultCustName').val();
			var custCodeString  = defaultCustName.substr(0,defaultCustName.indexOf(' ')); 
			var custNameString = defaultCustName.substr(defaultCustName.indexOf(' ')+1);
			document.getElementById("customerName").value = custNameString;
			document.getElementById("customerCode").value = custCodeString;
		} */
		//validateCodeSearchInput("true");
		 return false;
	},
}).data("ui-autocomplete")._renderItem = function(ul, item) {

	if (item.status === "N") {
		return $("<li class=\"disableAutoComp\"></li>").append(
				"<a>" + item.code + " " + item.custName + "--" + "INACTIVE" + "</a>").appendTo(
				ul);
	} else {
		return $("<li></li>").append("<a>" + item.code  + " " + item.custName + "</a>").appendTo(
				ul);
	}

};