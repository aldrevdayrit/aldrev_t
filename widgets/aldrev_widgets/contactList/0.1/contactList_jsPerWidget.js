
var ContactList_[[widgetId]] = function() {
	return {
		myVariable: null,

		init: function() {
			alert("ContactList_[[widgetId]].init");
			
//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".ContactList .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("ContactList.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(ContactList_[[widgetId]].init()); // Run after page loads