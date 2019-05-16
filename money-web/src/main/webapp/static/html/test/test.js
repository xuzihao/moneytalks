
function myFunction(){
	var length= $("#a").val();
	
	$.ajax({
	    type: "POST",
        url: "/money-web/test.do?",
		async:false,
		data:"length="+length,
        success: function(msg) {
        alert(msg);
        	new Vue({
        		  el: '#result',
        		  data: {
        			  result: msg
        		  }
        		})
        }
	});
}

