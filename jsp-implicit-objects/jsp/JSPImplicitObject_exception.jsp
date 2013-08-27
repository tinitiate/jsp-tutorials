<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Implicit Objects
@FILENAME   JSPImplicitObject_exception.jsp
@NOTES      1) "exception" is an object of java.lang.Throwable
            2) The exception object is an exception handler of 
               the exception thrown from the previous page.
            3) It must be in an exception PAGE (set using page directive)    
-->

<html>
   <head>
        <title>tinitiate.com: This is an example of the "exception" Object</title>
        <%@ page isErrorPage="true" %>
   <head>
	<body>
	        <p>* The exception object is an exception handler of the exception thrown from the previous page.</p>
            <p>* It must be in an exception PAGE (set using page directive) </p>    
	       The following exception was thrown: <%= exception %>
	</body>
</html>
