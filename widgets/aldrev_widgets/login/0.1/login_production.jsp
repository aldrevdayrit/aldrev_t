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
<%@page import="tooltwist.aldrev.productionHelpers.LoginProductionHelper"%>
--%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
//	LoginProductionHelper h = (LoginProductionHelper) helper;
//	XData data = h.getData(jh);
%>

<!-- ********** INSERT HTML HERE ********** -->


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
$('#submit').click(function(){
var username=$('#user').val();
var password=$('#pass').val();

if(username=="")
{
$('#dis').slideDown().html("<span>Please type Username</span>");
return false;
}
if(password=="")
{
$('#dis').slideDown().html('<span id="error">Please type Password</span>');
return false;
}
});
});

</script>

<fieldset style="width:250px;" id="login">
<form method="post" >
<label id="dis"></label><br>
Username: <input type="text" name="user" id="user" /><br />
Password: <input type="password" name="pass" id="pass" /><br /><br />
<center><input type="submit" name="submit" id="submit" /></center>
</form>

</fieldset>



<!--END-->
</body>
</html>
