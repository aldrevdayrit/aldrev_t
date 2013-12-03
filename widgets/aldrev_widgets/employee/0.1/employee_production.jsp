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
<%--
<%@page import="tooltwist.aldrev.productionHelpers.EmployeeProductionHelper"%>
--%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
//	EmployeeProductionHelper h = (EmployeeProductionHelper) helper;
//	XData data = h.getData(jh);
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
<label id="dis"></label><br>

First Name:  <input type="text" name="fName" id="fName" required/><br />
Middle Name:  <input type="text" name="mName" id="mName" required/><br />
Last Name:  <input type="text" name="lName" id="lName" required/><br />
Gender Name:  <select ><option value="male" id="gender">Male</option><option value="female">Female</option></select>
<br>
Birthdate:  <input type="text" name="bdate" id="datepicker" required/><br />
<center><button value="edit">Edit</button><button name="submit" id="submit" value="Save" >Save</button></center>
</form>


</fieldset>

<!--END-->
</body>
</html>
