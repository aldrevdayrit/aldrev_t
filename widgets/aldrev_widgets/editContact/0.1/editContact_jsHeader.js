
var EditContact= function() {
	return {
		myVariable: null,

		init: function() {
			
			$( "#datepicker" ).datepicker();
			
			  $("#login").hide();
			  $("h3").click(function(){
				  $("#login").slideToggle();
			  });
			  
//			  $("#btnSubmit").click(function() {
//				  
//				  var fldOp = $("#op").val();
//				  
//				  $.ajax({
//					  url: "",
//					  data: {
//						  op: fldOp,
//						  firstName: "adsf"
//					  },
//					  success: function(data) {
//						  
//					  }
//				  });
//			  });
			  
		}
	
	};
}();

jQuery(EditContact.init()); // Run after page loads