<%@page import="com.dinaa.data.XNodes"%>
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
<%@page import="com.dinaa.data.XData"%>
<%@page import="tooltwist.aldrev.productionHelpers.ContactListProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
	ContactListProductionHelper h = (ContactListProductionHelper) helper;
	XData data = h.getData(jh);
	XNodes nodes = data.getNodes("/select/contactInfo");
%>

<!-- ********** INSERT HTML HERE ********** -->

<table border ="1" cellpadding="2" cellspacing="1">
<tr>
<th>ContactID</th>
<th>homeNo</th>
<th>cellphoneNo</th>
<th>companyNo</th>


</tr>
<%for (nodes.first(); nodes.next();)  {%>
<tr>

<td><a href="%%navpoint%%?contactId=<%= nodes.getText("contactId") %> &employeeId=<%=nodes.getText("employeeId") %>" ><%= nodes.getText("contactId") %>
<td><%= nodes.getText("homeNo") %></td>
<td><%= nodes.getText("cellphoneNo") %></td>
<td><%= nodes.getText("companyNo") %></td>




</tr>
<%} %>

</table>

<a href="%%navpoint%%?employeeId=<%=h.getEmployeeId() %>">Add Contact</a>

<!--END-->
</body>
</html>
