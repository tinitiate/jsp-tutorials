<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Implicit Objects
@FILENAME   JSPImplicitObject_session_next.jsp
@NOTES      1) "session" is an object of javax.servlet.http.HttpSession
            2) The session object is used to pass information across a web 
               session (Across webpages).
            3) By default the session object is enabled, but we can disable using the
               page directive &lt;% @page session="false"%&gt;
            4) Session variables can be implemented using the "request" object
            5) FILES NEEDED TO RUN THIS PROGRAM:
                   JSPImplicitObject_session.jsp
                   JSPImplicitObject_session_next.jsp
-->

<html>
   <head>
        <title>tinitiate.com: This is an example of the "session" Object</title>
    </head>
    <body>
        <%
            out.print("This page will print all the session attributes from the JSPImplicitObject_session.jsp");
            out.print("<br/>");
            out.print("Reading session Variable: tinitiate_session = " + session.getAttribute("tinitiate_session"));
            
            out.print("<br/>");
            out.print("Reading request Variable: NumberData = " + request.getParameter("NumberData"));
        %>
    </body>
</html>
