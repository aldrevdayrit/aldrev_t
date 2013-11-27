
var GoogleMap2_[[widgetId]] = function() {
	return {
		myVariable: null,

		init: function() {
			alert("GoogleMap2_[[widgetId]].init");
			
//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".GoogleMap2 .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("GoogleMap2.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(GoogleMap2_[[widgetId]].init()); // Run after page loads