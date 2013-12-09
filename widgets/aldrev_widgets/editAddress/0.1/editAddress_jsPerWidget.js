
var EditAddress  = function() {
	return {
		myVariable: null,

		init: function() {
			alert("EditAddress_[[widgetId]].init");
			
//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".EditAddress .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("EditAddress.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(EditAddress_[[widgetId]].init()); // Run after page loads