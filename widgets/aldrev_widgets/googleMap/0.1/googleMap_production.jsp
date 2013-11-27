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
<%@page import="tooltwist.aldrev.productionHelpers.GoogleMapProductionHelper"%>
--%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
//	GoogleMapProductionHelper h = (GoogleMapProductionHelper) helper;
//	XData data = h.getData(jh);
%>

<!-- ********** INSERT HTML HERE ********** -->

 
 
    <style>
      #map_canvas {
        width: %%widthValue%%px;
        height: %%heightValue%%px;
      }
      
      
     #map_canvas:hover{
     	width: 1px;
     	height: 1px;
     }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script>
    var coor =  new google.maps.LatLng(%%latitudeValue%%,%%longitudeValue%%);
    var zoomSize = %%zoom%%;
     
   
    
      function initialize() {
        var map_canvas = document.getElementById('map_canvas');
        var map_options = {
          center: coor, //15.190606
          zoom: zoomSize,
          mapTypeId: google.maps.MapTypeId.%%type%%
        }
        
        var map = new google.maps.Map(map_canvas, map_options)
        
        var marker = new google.maps.Marker({
            position: coor,
            map: map,
            title:"Hello World!"
        });
        
      }
      google.maps.event.addDomListener(window, 'load', initialize);
    </script>
 	
 	<div id="map_canvas"></div>


	<!-- Display an image 
	<img src="%%URL(aldrev/images/myImage.png)%%"/>
	 -->

	<%-- Use a property
	My Property = <%=snippetVar_myProperty%><br/>
	--%>
	
	<%-- link to a navpoint, with automatic parameters added
	<%
	String nextPageUrl = RoutingUIM.navpointUrl(jh, snippetVar_myNavpoint, AutomaticUrlParametersMode.INSERT_AUTOMATIC_URL_PARAMETERS_NOW);
	%>
	<a href="+nextPageUrl+">next page</a>
	--%>


<!--END-->
</body>
</html>
