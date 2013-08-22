<!--  
@AUTHOR     Tinitiate.com
@TOPIC      JSP Page Directives
@GROUP-CODE 
@NOTES      1) In a JSP page the "Page Directives" instructs how 
               to handle various aspects of JSP processing.
            2) Page Directive: "isThreadSafe", 
               JSPs by default are thread-safe. If isThreadSafe option is set to false, 
               sequential thread executing on the JSP is done by the JSP engine.

-->
<html>
    <head>
       <title>JSP Page Directives</title>
    </head>
    <%@ page isThreadSafe="false"%>
    <h6>Tinitiate: This page executes operations in sequence</h6>
    <body>
</html>
