<!--  
@AUTHOR     Tinitiate.com
@TOPIC      JSP Page Directives
@FILE-NAME  "WebContent/PageDirectives/PageDirective_contentType.jsp"
@GROUP-CODE 
@NOTES      1) In a JSP page the "Page Directives" instructs how 
               to handle various aspects of JSP processing.
            2) Directive: "contentType", This defines the JSP Page MIME (Character Encoding)
               Commonly used Content Types:
               ;lt&%@ page contentType="text/xml" %;gt&
               ;lt&%@ page contentType="application/octet-stream" %;gt&
               ;lt&%@ page contentType="text/html" %;gt&
               ;lt&%@ page contentType="text/plain" %;gt&
               ;lt&%@ page contentType="multipart/mixed" %;gt&
-->
<html>
    <head>
       <title>JSP Page Directives: contentType</title>
    </head>
        <%@ page contentType="text/html" %>
    <body>
	    <% out.println("This JSP is is of HTML content Type"); %>
    </body>
</html>
