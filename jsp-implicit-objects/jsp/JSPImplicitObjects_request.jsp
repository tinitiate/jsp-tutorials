<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Implicit Objects: request
@FILENAME   JSPImplicitObjects_request.jsp
@NOTES      1) request : Object of javax.servlet.ServletRequest
            2) It request.getParameter(), is used to get
               the HTML form Parameters into JAVA.
-->

<html>
    <head><title>tinitiate.com: This is an example to use the OUT-Implicit Object</title></head>
    <body>
	    <% out.print("tinitiate.com request.getParameter() usage"); %>
		<form action="JSPImplicitObject_request.jsp">
			<input type="number" name="NumberData" value=100>
			<input type="submit" value="Proceed"><br/>
			<% out.print("Click on Proceed to see the data value"); %>
		</form>
		<%
		    out.print("Reading and the \"NumberData\" Parameter..");
	    	out.print("Value of \"NumberData\": " + request.getParameter("NumberData"));
		%>
    </body>
</html>
