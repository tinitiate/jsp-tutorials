<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Implicit Objects
@FILENAME   JSPImplicitObject_PageContext_next.jsp
@NOTES      1) "PageContext" is an object of javax.servlet.jsp.PageContext 
            2) The PageContext is used to get/set attributes from various SCOPES
                i.e. objects that handles session attributes
                application, config, session .. 
            3) FILES NEEDED TO RUN THIS PROGRAM:
                   JSPImplicitObject_PageContext.jsp
                   JSPImplicitObject_PageContext_next.jsp
-->

<html>
   <head>
        <title>tinitiate.com: This is an example of the "application" Object</title>
    </head>
    <body>
        <%
           out.println("<h3>Reading Attributes from JSPImplicitObject_PageContext.jsp Page in the same Session</h3>");
           out.println("Reading PageContext.SESSION_SCOPE attribute: tinVarSESSION using pageContext.getAttribute");
           out.println("<br/>");
           out.println("Valueof tinVarSESSION : " 
                       +  pageContext.getAttribute( "tinVarSESSION"
                                                   ,PageContext.SESSION_SCOPE)
                       );
           out.println("<br/><br/>");
           out.println("Reading PageContext.APPLICATION_SCOPE attribute: tinVarAPPLICATION using pageContext.getAttribute");
           out.println("<br/>");
           out.println("Valueof tinVarAPPLICATION : " 
                       +  pageContext.getAttribute( "tinVarAPPLICATION"
                                                   ,PageContext.APPLICATION_SCOPE)
                       );
        %>
    </body>
</html>
