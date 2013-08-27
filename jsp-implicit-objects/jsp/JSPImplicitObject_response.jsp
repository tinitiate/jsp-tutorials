<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Implicit Objects: Response
@FILENAME   JSPImplicitObject_response.jsp
@NOTES      1) response : javax.servlet.ServletResponse
            2) This example demonstrates the reDirect method,
               it redirects the output to www.tinitiate.com
-->
<html>
    <head><title>tinitiate.com: This is an example of the Response Object</title></head>
    <body>
        <%
            response.sendRedirect("http://www.tinitiate.com");
        %>
    </body>
</html>
