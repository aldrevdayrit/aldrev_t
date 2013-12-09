
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
<%@page import="tooltwist.aldrev.productionHelpers.DynamicEmployeeListProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%@page import="com.dinaa.data.XNodes"%>
<%
	// Get the production helper for this widget
	DynamicEmployeeListProductionHelper h = (DynamicEmployeeListProductionHelper) helper;
	XData data = h.getData(jh);
	XNodes nodes = data.getNodes("/select/employee");
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
  
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
  
  <script>
  $(document).ready(function(){
	  $("#login").hide();
	  $("h3").click(function(){
		  $("#login").slideToggle();
	  });
  });
  </script>


<h3>Employee</h3>

<fieldset style="width:250px;" id="login">
<form method="post" >
<input type="hidden" name="op" id="op" value="aldrev_widgets.dynamicEmployeeList.editEmployee"/>
<input type="hidden" name="employeeId" value =<%=h.getEmployeeId() %> />

<label id="dis"></label><br>
<%-- <%for (nodes.first(); nodes.next();)  {%> --%>
Employee ID: <input type="text" name="txtEmployeeId" id="fName" value="<%= nodes.getText("employeeId") %>" required/><br />
First Name:  <input type="text" name="txtFirstName" id="fName" value="<%= nodes.getText("firstName") %>" required/><br />
Middle Name:  <input type="text" name="txtMiddleName" id="mName" value="<%= nodes.getText("middleName") %>"  required/><br />
Last Name:  <input type="text" name="txtLastName" id="lName" value="<%= nodes.getText("lastName") %>" required/><br />
Nick Name:  <input type="text" name="txtNickName" id="lName" value="<%= nodes.getText("nickName") %>" required/>
<br>

<%-- <%System.out.println(nodes.getText("lastName") );} %> --%>


<center><input type="submit" name="submit" id="btnSubmit" value="Save"  /></center>


</form>


</fieldset>

<!--END-->
</body>
</html>
