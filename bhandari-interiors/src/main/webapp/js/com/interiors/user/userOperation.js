
function ajaxRequestForAddUser(){

    var form = $('#userInfo');
    $.ajax({
           url : "/bhandari-interiors/addUser",
           data : form.serialize(),
//           headers:headers,
           type : 'post',
           cache    : false,
           success : function(response) {
                  var jsonObject = $.parseJSON(response);
                  userResponse(jsonObject);
           },
           error: function (response, e) {
	   	        if (response.status == 403 || response.status == 400) {
	   	            //window.location = "/origin/errorPage403";
	   	        }
	   	    }
    });
}

function userResponse(jsonObject){
	
	if (jsonObject.IS_ERROR == "false") {
		alert(jsonObject.MESSAGE + ". User Id is - " + jsonObject.USER_ID);
		resetFields();
	} else if (jsonObject.IS_ERROR == "false") {
		alert(jsonObject.MESSAGE);
	}
}



function resetFields() {
	document.getElementById('userInfo').action = "operations";
    document.getElementById('userInfo').method = 'POST';
    document.getElementById('userInfo').submit();
}


