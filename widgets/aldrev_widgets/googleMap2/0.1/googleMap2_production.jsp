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
<%@page import="tooltwist.aldrev.productionHelpers.GoogleMap2ProductionHelper"%>
--%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
//	GoogleMap2ProductionHelper h = (GoogleMap2ProductionHelper) helper;
//	XData data = h.getData(jh);
%>

<!-- ********** INSERT HTML HERE ********** -->


    <style>
      #map_canvas {
        width: %%widthValue%%px;
        height: %%heightValue%%px;
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



<!--END-->
</body>
</html>
