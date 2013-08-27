<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Implicit Objects
@FILENAME   JSPImplicitObject_session.jsp
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
        <h3>Tinitiate.com : Example for session object.</h3>
        <%
            out.print("Creating a session variable \"tinitiate_session\"");
            out.print("<br/>");
            out.print("Using the session.setAttribute method to create the session Variable.");
            out.print("<br/>");
            session.setAttribute("tinitiate_session","This is Session Alpha");
        %>
        <!--  Creating a FORM to implement the request Object -->
        <% out.print("tinitiate.com request.getParameter() usage to demonstrate session attributes"); %>
        <form action="JSPImplicitObject_session_next.jsp">
            <input type="number" name="NumberData">
            <input type="submit" value="Goto_Next_Page_in_Same_Session"><br/>
        </form>
    </body>
</html>
