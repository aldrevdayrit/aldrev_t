
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
<%@page import="tooltwist.aldrev.productionHelpers.AddressListProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%@page import="com.dinaa.data.XNodes"%>
<%
	// Get the production helper for this widget
	AddressListProductionHelper h = (AddressListProductionHelper) helper;
	XData data = h.getData(jh);
	XNodes nodes = data.getNodes("/select/address");
%>

<!-- ********** INSERT HTML HERE ********** -->

<table border ="1" cellpadding="2" cellspacing="1">
<tr>
<th>addressID</th>
<th>House No</th>
<th>Street</th>
<th>Barangay</th>
<th>City</th>
<th>Municipality</th>
<th>Province</th>
<th>Country</th>
<th>Zip code</th>

</tr>
<%for (nodes.first(); nodes.next();)  {%>
<tr>


<td><a href="%%navpoint%%?addressId=<%= nodes.getText("addressId") %>&employeeId=<%=nodes.getText("employeeId") %>" ><%= nodes.getText("addressId") %></td>
<td><%= nodes.getText("houseNo") %></td>
<td><%= nodes.getText("street") %></td>
<td><%= nodes.getText("barangay") %></td>
<td><%= nodes.getText("city") %></td>
<td><%= nodes.getText("municipality") %></td>
<td><%= nodes.getText("province") %></td>
<td><%= nodes.getText("country") %></td>
<td><%= nodes.getText("zipCode") %></td>

</tr>
<%} %>
</table>

<a href="%%navpoint%%?employeeId=<%=h.getEmployeeId() %>">Add Address</a>
<!--END-->
</body>
</html>
