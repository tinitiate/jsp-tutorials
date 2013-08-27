<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Implicit Objects: Config
@FILENAME   config_tester.jsp

@NOTES      1) Config : javax.servlet.ServletConfig
            2) The Config object is used to read parameters from 
               the web.xml file and the file locations.
            3) Place this file in folder "WebContent/JSPImplicitObjects"
            4) FILES NEEDED TO RUN THIS PROGRAM:
                   JSPImplicitObject_config.jsp
                   web.xml
-->
<html>
<body>
<form action="JSPImpactObject_config.jsp">
<input type="text" name="uname">
<input type="submit" value="go"><br/>
</form>
</body>
</html>
