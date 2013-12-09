
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
<%@page import="tooltwist.aldrev.productionHelpers.EditContactProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%@page import="com.dinaa.data.XNodes"%>
<html>
<%
	// Get the production helper for this widget
	EditContactProductionHelper h = (EditContactProductionHelper) helper;
	XData data = h.getData(jh);
	XNodes nodes = data.getNodes("/select/contactInfo");
	nodes.next();
%>

<!-- ********** INSERT HTML HERE ********** -->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js">
</script>

<script type="text/javascript">
/*
$(document).ready(function(){
$('#submit').click(function(){
var fName=$('#fName').val();
var mName=$('#mName').val();
var lName=$('#lName').val();
var bdate = $('#bdate').val();

if(fName=="")
{
$('#dis').slideDown().html("<span>Please type First Name</span>");
return false;
}
if(mName=="")
{
$('#dis').slideDown().html('<span id="error">Please type Middle Name</span>');
return false;
}
if(lName=="")
{
$('#dis').slideDown().html('<span id="error">Please type Last Name/span>');
return false;
}
if(bdate=="")
{
$('#dis').slideDown().html('<span id="error">Please choose a birthdate</span>');
return false;
}

});
});
*/
</script>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>



<h3>Contact Information</h3>

<fieldset style="width:250px;" id="login">
<form method="post" >
<input type="hidden" name="op" id="op" value="aldrev_widgets.editContact.contact" />
<input type ="hidden" name = "employeeId" value ="<%=h.getEmployeeId() %>"/>
<label id="dis"></label><br>
<%-- <%for (nodes.first(); nodes.next();)  {%> --%>
Contact ID: <input type="text" name="txtContactId" id="fName" value="<%= nodes.getText("contactId") %>" /><br />
Home Number:  <input type="text" name="txtHomeNo" id="fName" value="<%= nodes.getText("homeNo") %>" required/><br />
Cellphone Number:  <input type="text" name="txtCellphoneNo" id="mName" value="<%= nodes.getText("cellphoneNo") %>"  required/><br />
Company Number:  <input type="text" name="txtCompanyNo" id="lName" value="<%= nodes.getText("companyNo") %>" required/><br />

<br>

<%-- <%System.out.println(nodes.getText("lastName") );} %> --%>


<center><input type="submit" name="submit" id="btnSubmit" value="Save"  /></center>


</form>


</fieldset>



<!--END-->
</body>
</html>
