<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Implicit Objects: Config
@FILENAME   JSPImplicitObject_config.jsp

@NOTES      1) Config : javax.servlet.ServletConfig
            2) The Config object is used to read parameters from 
               the web.xml file and the file locations.
            3) Place this file in folder "WebContent/JSPImplicitObjects"
            4) FILES NEEDED TO RUN THIS PROGRAM:
                   config_tester.jsp
                   JSPImplicitObject_config.jsp
                   web.xml
-->
<html>
    <head>
        <title>tinitiate.com: This is an example of the Config Object</title>
    </head>
	<body>
		<%
		    out.print("Servlet Name :" + config.getServletName());
		    out.print("<br/>");
		    //config.getInitParameterNames();
            out.print("Value of web.xml file's init-param \"tivalue\" is : " + config.getInitParameter("tivalue_init"));
		%>
    </body>
</html>
