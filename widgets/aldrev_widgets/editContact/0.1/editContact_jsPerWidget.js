
var EditContact_[[widgetId]] = function() {
	return {
		myVariable: null,

		init: function() {
			alert("EditContact_[[widgetId]].init");
			
//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".EditContact .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("EditContact.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(EditContact_[[widgetId]].init()); // Run after page loads