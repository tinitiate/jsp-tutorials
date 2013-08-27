<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Implicit Objects
@FILENAME   JSPImplicitObject_PageContext.jsp
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
        <title>tinitiate.com: This is an example of the "PageContext" Object</title>
    </head>
    <body>
        <%
           out.println("<h3>Creating Attributes accessable from other Pages in the same Session</h3>");
           // Creating a Session Scope attribute that can be read by any JSP in the same session
           out.println("Creating a PageContext.SESSION_SCOPE attribute: tinVarSESSION using pageContext.setAttribute");
           out.println("<br/>");
           pageContext.setAttribute("tinVarSESSION", "ValueOfSessionScope", PageContext.SESSION_SCOPE);

           // Creating a Application Scope attribute that can be read by any JSP in the same session
           out.println("<br/>");
           out.println("Creating a PageContext.APPLICATION_SCOPE attribute: tinVarAPPLICATION using pageContext.setAttribute");
           out.println("<br/>");
           pageContext.setAttribute("tinVarAPPLICATION", "ValueOfApplicationScope", PageContext.APPLICATION_SCOPE);
           out.println("<br/>");

           // Creating a Page Scope attribute that can be read by THIS JSP in the same session
           out.println("<h3>Creating Attributes accessable from same Page in the same Session</h3>");
           out.println("Creating a PageContext.PAGE_SCOPE attribute: tinVarPAGE using pageContext.setAttribute");
           out.println("<br/>");
           pageContext.setAttribute("tinVarPAGE", "ValueOfPageScope", PageContext.PAGE_SCOPE);

           out.println("<h4>Printing THIS pages 'Page scope' Attribute..</h4>");
           out.println(  "Reading PAGE_SCOPE attribute: tinVarPAGE = " 
                       + pageContext.getAttribute( "tinVarPAGE"
                                                  ,PageContext.PAGE_SCOPE));
           out.println("<br/>");
        %>
         <br/><br/>
        <a href="JSPImplicitObject_PageContext_next.jsp"><b>Click Here</b></a> to go to JSPImplicitObject_PageContext_next.jsp
    </body>
</html>
