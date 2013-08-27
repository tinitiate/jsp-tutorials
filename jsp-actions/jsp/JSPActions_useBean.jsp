<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Actions: useBean
@FILENAME   JSPActions_useBean.jsp
@GROUP-CODE 
@NOTES      1) JSP provides XML like Action TAGs for various operations
               such as control of flow between pages and calling Java Beans
               Java Beans: They are reusable they are classes that encapsulate 
                           many objects into a single object (the bean).
            2) Action: useBean
               Using this Tag, to call a bean class
            3) Java Bean(It can be regular Java Class (usually with the properties):
                3.1) It is a Java Class with a No-argument Constructor.
                3.2) It must have Get and Set methods to access the 
                     Class attributes(variables).
                3.3) It should be Serializable.
                3.4) Please note the above are conventions 
                     and best practises, but NOT mandatory.
            4) Files used: JSPActions_useBean.jsp
            5) This JSP calls itself in the Post method
            6) I have used various HTML form controls to demonstrate simple 
               use of the "useBean" action.
            7) First "import" the Class in the JSP file and Make sure its in a package 
               and the java class file is placed in the 
               \\Tomcat\webapps\tinitiate\WEB-INF folder
            8) Give an ID to the bean here called "calc" and use that as the reference.
-->
<html>
    <head>
       <title>Tinitiate JSP Action: include example</title>
    </head>
    <%@page import="tinitiatejsp.TinitiateJSPbeanClass" %>
    <body>
       <h4>Tinitiate: A very Detailed HTML Form and post to java Class usage example </h4>
       <p> Note this JSP calls ITSELF in the POST operation.</p>
       <!--  This JSP CALLS ITSELF action="JSPActions_useBean.jsp" -->
       <form method="post" action="JSPActions_useBean.jsp">

		   Number 1<input type="number" name="n1"  value=<% request.getParameter("n1"); %>>
		   Number 2<input type="number" name="n2"  value=<% request.getParameter("n2"); %>> <br>
		   <p>Select Operation</p><br>
           <input type="radio"  name="ops" value="sum">Add Number 1 and Number 2<br>
		   <input type="radio"  name="ops" value="diff">Subtract Number 1 and Number 2<br>
		   <input type="radio"  name="ops" value="product">Multiply Number 1 and Number 2<br>
		   <input type="submit" value="Compute">
	   </form>

       <!--  Calling the Java Bean (Java Class) -->
       <jsp:useBean id="calc" class="tinitiatejsp.TinitiateJSPbeanClass"/>
	       <%
	            // Do not do anything if the values are null
				if (   request.getParameter("n1")  != null
				    && request.getParameter("n2")  != null
				    && request.getParameter("ops") != null )
				{
				      // Check for null strings, Do not do anything if Number 1,Number 2 are null
				      if (   !request.getParameter("n1").equals("")
			              && !request.getParameter("n2").equals("")) 
				      {
					      int n1 = Integer.parseInt(request.getParameter("n1"));
					      int n2 = Integer.parseInt(request.getParameter("n2"));
					      out.print(request.getParameter("ops") + " of " + n1 + " and " + n2 + " -> ");

					      // Call the BeanID "calc"
					      out.print(calc.compute( request.getParameter("ops")
					                             ,n1
					                             ,n2));
				      }
				}
	       %>
    </body>
</html>
