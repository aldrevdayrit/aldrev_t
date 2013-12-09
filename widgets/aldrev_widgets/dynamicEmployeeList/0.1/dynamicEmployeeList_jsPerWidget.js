
var DynamicEmployeeList_[[widgetId]] = function() {
	return {
		myVariable: null,

		init: function() {
			alert("DynamicEmployeeList_[[widgetId]].init");
			
//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".DynamicEmployeeList .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("DynamicEmployeeList.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(DynamicEmployeeList_[[widgetId]].init()); // Run after page loads