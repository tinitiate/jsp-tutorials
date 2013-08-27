<!--  
@AUTHOR     Tinitiate.com
@TOPIC      JSP Actions: Forward
@FILENAME   JSPActions_forward.jsp
@GROUP-CODE 
@NOTES      1) JSP provides XML like Action TAGs for various operations
               such as control of flow between pages and calling Java Beans
               Java Beans: They are reusable they are classes that encapsulate 
                           many objects into a single object (the bean).
            2) Action: Forward
               Using this Tag, will forward the request to another page, 
               by ending current page execution.
            3) Files used: JSPActions_forward.jsp, JSPtinitiate_fwd.jsp
               Make sure both files are in the same directory   

-->
<html>
	<head>
    	<title>Tinitiate JSP Actions: Forward</title>
	</head>
	<body>
	    <h6>Welcome to Tinitiate JSP Actions, This page will forward to JSPtinitiate_fwd.jsp in 3 Seconds ..</h6>
	    <% Thread.sleep(3000); %>
	    <jsp:forward page="JSPtinitiate_fwd.jsp" />
	</body>
</html>
