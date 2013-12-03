
var Employee_[[widgetId]] = function() {
	return {
		myVariable: null,

		init: function() {
			alert("Employee_[[widgetId]].init");
			
//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".Employee .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("Employee.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(Employee_[[widgetId]].init()); // Run after page loads