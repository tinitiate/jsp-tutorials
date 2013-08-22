<!--  
@AUTHOR     Tinitiate.com
@TOPIC      JSP Page Directives
@GROUP-CODE "WebContent/PageDirectives/PageDirective_autoFlush.jsp"
@NOTES      1) In a JSP page the "Page Directives" instructs how 
               to handle various aspects of JSP processing.
            2) Directive: "autoFlush", Indicates if the buffer 
               needs to be flushed if full: ;lt&%@ page autoFlush="true" %;gt&
               or throw exception: ;lt&%@ page autoFlush="false" %;gt&
            4) It is used with "buffer" directive   
            3) This page will give Error, remove some lines and it will Work.   
-->
<html>
    <head>
       <title>JSP Page Directives: autoFlush</title>
    </head>
    <%@ page buffer="1kb" autoFlush="false" %>
    <h6>This will raise an Exception when the buffer is full</h6>
    <body> Tinitiate text to have more than 1KB
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    </body>
</html>
