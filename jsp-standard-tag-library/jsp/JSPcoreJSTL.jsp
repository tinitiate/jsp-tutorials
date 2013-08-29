<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSTL JavaServer Pages Standard Tag Library
@FILENAME   JSPcoreJSTL.jsp
@NOTES      1) Download the JSP JSTL tag lib (JSTL.jar)
               from apache.com, Place the JSTL.jar in 
               "Tomcat\lib" folder.
            2) CORE JSTL Tags,
	           2.1) c:out Print to page
	           2.2) c:set Set the Value of a Variable
	           2.3) c:if if..else (conditional) syntax JSP page
	           2.4) c:choose and c:when  (conditional) syntax
	           2.5) c:otherwise is the ELSE in if..else for c:when
	           2.6) c:forEach   (Iterator/LOOPs)
	           2.7) c:forTokens Looping over a Dilimeter seperated 
	                            LIST of values (Iterator/LOOPs)
-->

<html>
   <head><title> Tinitiate.com: JSTL JavaServer Pages Standard Tag Library [CORE TAGS]</title></head>
   <body>
        <h1>tinitiate.com JSTL Standard Tag Library CORE Tags</h1>

        <!-- ######################################### -->
        <!-- Must ADD THIS LIBRARY for the Tag to Work -->
        <!-- ######################################### -->
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <h3>Tag "c:set", "c:out" and "c:remove" Print to page</h3>
        <!-- ################################# -->
        <!-- c:set Set the Value of a Variable -->
        <!-- ################################# -->        
        <c:set var="v_message1" scope="session" value="JSP training from tinitiate.com"/>
        
        <!-- ####################### -->
        <!-- c:out Print to JSP page -->
        <!-- ####################### -->
        This is a test message: <c:out value = " ${v_message1}"></c:out>

        <!-- ####################### -->
        <!-- c:out Print to JSP page -->
        <!-- ####################### -->
        <% request.setAttribute("v_message2","This is the Second Message"); %>
        This is a test message <c:out value = " ${v_message}"></c:out>

        <!-- ####################### -->
        <!-- c:remove Remove unallocates 
             the value -->
        <!-- ####################### -->
        <c:remove var="v_message2"/>
        <p>Value of v_message2 After Remove Value: <c:out value="${v_message2}"/></p>

        <h3>FORM to demonstrate CONDITIONAL Statements (c:if and c:when) in JSP</h3>
        <form action="JSPcoreJSTL.jsp">
            Enter a Number: <input type="number" name="var1" /><br/>
            <input type="submit" value="getDetails"/>
        </form>

        <h4>Tag "c:if" CONDITIONAL Statement in JSP</h4>
        <!-- ########################################### -->
        <!-- c:if if..else (conditional) syntax JSP page 
             Make sure to use the "test" with c:if       -->
        <!-- ########################################### -->
        <c:if test = "${param.var1 > 5}">
            <p> The Number is Greater than 5</p>
        </c:if>
        <c:if test = "${param.var1 < 5}">
            <p> The Number is Less than 5</p>
        </c:if>
        <c:if test = "${param.var1 == 5}">
            <p> The Number is 5</p>
        </c:if>

        <h4>Tag "c:when" CONDITIONAL Statement in JSP</h4>
        <!-- ########################################### -->
        <!-- c:choose and c:when  (conditional) syntax   -->
        <!-- c:otherwise is the ELSE in if..else for c:when -->
        <!-- JSP page Make sure to use the "test"        -->
        <!-- ########################################### -->
		<c:choose>
		    <c:when test = "${param.var1 > 5}">
		        The Number is Greater than 5.
		    </c:when>
            <c:when test = "${param.var1 < 5}">
                The Number is Less than 5.
            </c:when>
		    <c:otherwise>
		        The Number is 5.
		    </c:otherwise>
		</c:choose>

        <h3>Tag "c:forEach" Iterator (LOOPs) Statement in JSP</h3>
        <!-- ########################################### -->
        <!-- c:forEach  (Iterator/LOOPs)                 -->
		<!-- ########################################### -->
        <p> Looping 5 Times </p>
		<c:forEach var="i" begin="1" end="5">
        Loop Counter Value <c:out value="${i}"/> <br/>
        </c:forEach>

        <h3>Tag "c:forEach" Iterator (LOOPs) Statement in JSP</h3>
        <!-- ########################################### -->
        <!-- c:forTokens  Looping over a Dilimeter 
             seperated LIST of values (Iterator/LOOPs)   -->
        <!-- ########################################### -->
		<c:forTokens items="Java,Scala,HTML" delims="," var="ProgrammingLanguage">
		   <c:out value="${ProgrammingLanguage}"/><p>
		</c:forTokens>

   </body>
</html>
