<!--  
@AUTHOR     Tinitiate.com
@TOPIC      JSP Actions: Include
@FILENAME   JSPActions_include.jsp
@GROUP-CODE 
@NOTES      1) JSP provides XML like Action TAGs for various operations
               such as control of flow between pages and calling Java Beans
               Java Beans: They are reusable they are classes that encapsulate 
                           many objects into a single object (the bean).
            2) Action: Include
               Using this Tag, will include another page similar to the include directive, 
               but this action includes the file at the page request time.
            3) Files used: JSPActions_include.jsp, tinitiate.jsp
               Make sure both files are in the same directory.   
-->
<html>
	<head>
	   <title>Tinitiate JSP Action: include example</title>
	</head>
	<body>
	   <h4>This is JSPActions_include.jsp, Now including tinitiate.jsp</h4>
	   <jsp:include page="tinitiate.jsp" />
	</body>
</html>
