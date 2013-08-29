<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSTL JavaServer Pages Standard Tag Library
@FILENAME   JSPxmlJSTL.jsp
@NOTES      1) Download the JSP JSTL tag lib (JSTL.jar, 
               xalan.jar,xercesImpl.jar,xml-apis.jar)
               from apache.com, Place the JSTL.jar in 
               "Tomcat\lib" folder.
            2) XML JSTL Tags, Include x:out, x:forEach, 
               x:if, x:when
            3) FILES NEEDED TO RUN THIS PROGRAM:
               * JSPxmlJSTL.jsp
               * xmlData.xml
-->

<html>
   <head>
        <title> 
        Tinitiate.com: JSTL JavaServer Pages Standard Tag Library [XML TAGS]
        </title>
    </head>
	<body>
        <h1>tinitiate.com JSTL XML Tags</h1>
        <!-- ############################################ -->
        <!-- Must ADD THIS LIBRARY(s) for the Tag to Work -->
        <!-- ############################################ -->
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>

        <h3>The Source XML file: xmlData.xml</h3>
        <hr>
        <pre>
		    &lt;?xml version="1.0" encoding="UTF-8"?&gt;
	        &lt;programming&gt;
	            &lt;language/&gt;
	              &lt;name/>Java&lt;/name&gt;
	              &lt;type>Object Oriented&lt;/type&gt;
	            &lt;/language&gt;
	            &lt;language&gt;
	              &lt;name>PLSQL&lt;/name&gt;
	              &lt;type>Functional and Object Oriented&lt;/type&gt;
	            &lt;/language&gt;
	        &lt;/programming&gt;
        </pre>
        <hr>

        <p> Import the XML file using c:import</p>
        <!-- #################################################### -->
        <!-- Import the xmlData.xml as XML Source for this Program  -->
        <!-- #################################################### -->
        <!-- -->
		<c:import url="xmlData.xml" var="xmlData" />  

        <p> Parse the XML file using x:parse</p>
        <!-- ################################################################# -->
        <!-- Parse the xmlData.xml and Save the parsed data in l_xml variable  -->
        <!-- ################################################################# -->
        <!-- -->
		<x:parse  xml="${xmlData}"  var="l_xml" />

        <p> Loop through the Parsed XML to Print the tags using "x:out  select="</p>
        <!-- ################################################################# -->
        <!-- Loop through the Parsed Variable l_xml and Print the Tag's values -->
        <!-- ################################################################# -->
        <!-- -->
        <h5>The Output Tag Values</h5>
		<x:forEach  var="xmlTags"  select="$l_xml//programming//language" >
		  <!-- Print the NAME Tag's value -->
		  <x:out  select="$xmlTags//name" />
		  <br>
		  <!-- Print the TYPE Tag's value -->
		  <x:out  select="$xmlTags//type" />
		  <br>
		 </x:forEach>

	</body>
</html>
