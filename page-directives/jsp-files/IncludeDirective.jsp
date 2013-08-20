<!--  
@AUTHOR     Tinitiate.com
@TOPIC      JSP Include Directive
@GROUP-CODE 
@NOTES      1) In a JSP page the "Include Directives" instructs 
               that the specified page in the include is used 
               where ever the include file ="<fileName>" is 
               specified
               or throw exception: ;lt&%@include file="MyFile.html" %;gt&
             2) Note that this JSP calls the IncludeMe.jsp file.  
-->
<html>
	<head>
	    <title>Tinitiate Include Directive example</title>
	</head>
	<body>
	    <h6><font color="blue" style="background-color: yellow;"><b>Including IncludeMe.jsp</b></font></h6>
	    <%@include file="IncludeMe.jsp" %>
	</body>
</html>
