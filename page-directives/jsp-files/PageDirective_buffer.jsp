<!--  
@AUTHOR     Tinitiate.com
@TOPIC      JSP Page Directives
@FILE-NAME  "WebContent/PageDirectives/PageDirective_buffer.jsp"
@GROUP-CODE 
@NOTES      1) In a JSP page the "Page Directives" instructs how 
               to handle various aspects of JSP processing.
            2) Page Directive: "buffer", This directive handles the JSP output 
               in KiloBytes(Default 8KB)
            3) Usage: ;lt&%@ page buffer="16kb" %;gt&
               if no buffering is needed and pass output to the response object,
               use none: ;lt&%@ page buffer="none" %;gt&
-->
<html>
    <head>
       <title>JSP Page Directives: "buffer"</title>
    </head>
    <%@ page buffer="16kb" %>
    <h5>JSP Buffer page directive set to 16KB.</h5>
</html>
