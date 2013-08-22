<!--  
@AUTHOR     Tinitiate.com
@TOPIC      JSP Page Directives
@FILE-NAME  "WebContent/PageDirectives/PageDirective_import.jsp"
@GROUP-CODE 
@NOTES      1) In a JSP page the "Page Directives" instructs how 
               to handle various aspects of JSP processing.
            2) Directive: "import", Imports Package or its members,
               its the Java Import keyword. 
-->
<html>
    <head>
       <title>JSP Page Directives, Using IMPORT</title>
    </head>
    <body>
	    <!-- Import the java.util.Date -->
	    <%@ page import="java.util.Date" %>
	    <% out.println("This is a Demonstration of usage of page import directive");
	    %>
        Current Date and Time: <%= new Date() %>
     </body>
</html>
