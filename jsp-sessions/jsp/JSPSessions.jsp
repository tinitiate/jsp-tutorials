<!--
@AUTHOR     Tinitiate.com
            Venkata Bhattaram
@TOPIC      JavaServer Client Session Control
@FILENAME   JSPSessions.jsp
@NOTES      1) Since HTTP is stateless, server cannot keep track of the client
            2) To track clients session, we can use cookies or the session Object etc..
            3) Use case to demonstrate  session Object.  
-->
<html>
    <head>
        <title>TINITIATE.com Session Tracking and Handling</title>
    </head>
    <body>
	    <h4>JSPSessions.jsp, Tracks clients session</h4>
	    <p> * This JSP Creates a Session Object </p>
	    <p> * This JSP enables to enter a session ID and Data </p>
	    <p> * The JSP tracks the session, with its data and sessionID. <p>

		<!-- Include the java imports -->
		<%@ page import="java.io.*,java.util.*" %>
        <%
           // Get session creation time.
           Date    createTime       =  new Date(session.getCreationTime());
           // Get last access time of this web page.
           Date    lastAccessTime   =  new Date(session.getLastAccessedTime());
           String  SessionID        =  session.getId(); 
           int     SessionpageVisitCounter = 0;
        %>

		<%
		    // Check Session Status, New or Old
		    if (session.isNew()) {
		        // Set session Key-Values
		        session.setAttribute("SessionID", SessionID);
		        session.setAttribute("SessionCounter",  SessionpageVisitCounter);
		    }
		%>

		<p> Session Information from Server: </p>
		<% out.println("Session ID: " + SessionID); %>
		<br/>
		<% out.println("Session Create Time: " + createTime); %>
		<br/>
		<% out.println("Session Last Accessed Time: " + lastAccessTime); %>
		<br/>
		<p> Session Page Counter information(Number of Visits to the Page in the same session) </p>
		<% out.println("==="); %>
		<br/>
		<% 
	        SessionpageVisitCounter = (Integer)session.getAttribute("SessionCounter");
		    out.println("Session ID: " + SessionpageVisitCounter++ );
		    session.setAttribute("SessionCounter",  SessionpageVisitCounter);
		%>
		<br/>
		<% out.println("==="); %>
		<br/>
		<a HREF="JSPSessions.jsp">CLICK HERE TO REFRESH AND CHECK SESSION COUNTER</a>

    </body>
</html>
