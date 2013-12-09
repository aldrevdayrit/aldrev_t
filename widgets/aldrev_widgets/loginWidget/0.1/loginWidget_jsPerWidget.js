
var LoginWidget_[[widgetId]] = function() {
	return {
		myVariable: null,

		init: function() {
			alert("LoginWidget_[[widgetId]].init");
			
//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".LoginWidget .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("LoginWidget.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(LoginWidget_[[widgetId]].init()); // Run after page loads