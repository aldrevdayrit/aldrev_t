
<html>
<head>
<title></title>
</head>
<body>
<%
	WbdProductionHelper helper = null;
	JspHelper jh = null;
	String snippetVar_myProperty;
	String snippetVar_thisNavpoint;
%>
<!--START-->
<%@page import="tooltwist.wbd.WbdProductionHelper"%>
<%@page import="com.dinaa.data.XNodes"%>
<%@page import="com.dinaa.data.XData"%>
<%@page import="tooltwist.aldrev.productionHelpers.EmployeeListProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
	EmployeeListProductionHelper h = (EmployeeListProductionHelper) helper;
	XData data = h.getData(jh);
	XNodes nodes = data.getNodes("/select/employee");
%>

<!-- ********** INSERT HTML HERE ********** -->


<table border ="1" cellpadding="2" cellspacing="1">
<tr>
<th>ID</th>
<th>First Name</th>
<th>Middle Name</th>
<th>Last Name</th>
<th>Nick Name</th>

</tr>
<%for (nodes.first(); nodes.next();)  {%>
<tr>


<td><a href=%%navpoint%%?employeeId=<%= nodes.getText("employeeId") %> ><%= nodes.getText("employeeId") %></td>
<td><%= nodes.getText("firstName") %></td>
<td><%= nodes.getText("middleName") %></td>
<td><%= nodes.getText("lastName") %></td>
<td><%= nodes.getText("nickName") %></td>

</tr>
<%} %>
</table>

<!--END-->
</body>
</html>
