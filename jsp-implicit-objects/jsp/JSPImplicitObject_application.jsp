<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Implicit Objects
@FILENAME   JSPImplicitObject_application.jsp
@NOTES      1) "application" is the object of javax.servlet.ServletContext
            2) This can be used to read the configuration 
               information from the web.xml file.
            3) Servlet init parameters are for a single servlet.
               JSPs out side the <servlet> tags in web.xml can access them.
            4) Context-parameter placed in the <context-param> tags of the web.xml
               are for the entire web application. Any servlet or JSP in that web application 
               can access the context-parameter.
            5) Place this file in folder "WebContent/JSPImplicitObjects"
            6) FILES NEEDED TO RUN THIS PROGRAM:
                   JSPImplicitObject_application.jsp
                   web.xml
-->

<html>
   <head>
        <title>tinitiate.com: This is an example of the "application" Object</title>
    </head>
    <body>
        <%
            out.print("Server Name :" + application.getServerInfo());
            out.print("<br/>");
            //config.getInitParameterNames();
            out.print("Value of web.xml file's context-param \"tivalue_context\" is : " + application.getInitParameter("tivalue_context"));
        %>
    </body>
</html>
