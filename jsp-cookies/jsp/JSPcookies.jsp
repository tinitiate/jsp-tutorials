<!--
@AUTHOR     Tinitiate.com
            Venkata Bhattaram
@TOPIC      JavaServer Cookies
@FILENAME   JSPcookies.jsp
@NOTES      1) Cookies are text files stored on the client Browsers cookie folder.
            2) Cookies can store information for tracking or identifying client and 
               store various data.
            3) Browsers may send receive cookies to the server, to restore a client session
               or setup a client session.
            4) Browsers retain the cookie until it expires. (A cookie has an expiration date).   
-->


<!-- This section Creates cookies and saves them for a day -->
<%
    // Creating a Cookie to store data
    Cookie ApplicationName = new Cookie("AppName", request.getParameter("AppName"));
    Cookie RegionName      = new Cookie("RegionName", request.getParameter("RegionName"));

    // Set max Age of the Cookie (1 Day)
    ApplicationName.setMaxAge(24*60*60); // Time In seconds
    RegionName.setMaxAge(24*60*60);      // Time In seconds

    // Add both the cookies in the response header.
    response.addCookie( ApplicationName );
    response.addCookie( RegionName );
%>

<html>
	<head>
    	<title>TINITIATE.com Cookies Creating them, Reading them and Deleting them..</title>
    </head>
<body>
    <h4>JSPCookies.jsp, Creates, Reads and Deletes Cookies</h4>
    <p> * This JSP Sets Two Cookies AppName and RegionName </p>  
    <p> * The values for these Cookies are entered in the Text Boxes below. <p>

    <!-- (1) ################################# -->
    <!-- Form to set the values of the Cookies -->
    <!------------------------------------------->
    <p> Enter values for Application Name and Region Name: <p>
    <form action="JSPcookies.jsp" method="GET">
		"Application Name: "<input type="text" name="AppName">
		<br />
		"Region Name:      "<input type="text" name="RegionName" />
		<input type="submit" value="Set Cookies" />
    </form>
    <!------------------------------------------->

    <a href="JSPcookies.jsp">CLICK HERE TO REFRESH AND CHECK COOKIE DATA</a>
    
    <!-- (2) ############ -->
    <!-- Read the Cookies -->
    <!---------------------->
    <h4>Print Cookies are set by this JSP (JSPCookies.jsp)</h4>
    <p> * Current Values of Cookies AppName and RegionName </p>
	<%
	   Cookie   c1          = null;
	   Cookie[] cookieArray = null;

	   // ******************************************************
	   // * Get an array of Cookies associated with this domain
	   // ******************************************************
	   cookieArray = request.getCookies();
	   if( cookieArray != null ) {
	      out.println("<h3> Cookie Details </h3>");

	      for (int i = 0; i < cookieArray.length; i++) {
	         // Read Each cookie object
	         c1 = cookieArray[i];
	         String l_CookieName  = c1.getName().trim();
	         // Check for spefic COOKIES AppName and RegionName
	         if  ( l_CookieName.equals("AppName") || l_CookieName.equals("RegionName") )
	         {
	             // String l_CookieValue = c1.getValue();
		         out.print("Cookie Name : " + l_CookieName   +" <br/>");
		         out.print("Cookie Value: " + c1.getValue()  +" <br/>");
	         }
	      }
	  }else{
	      out.println("<h5>No cookies found !!</h5>");
	  }

	%>
</body>
</html>
