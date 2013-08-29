<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSTL JavaServer Pages Standard Tag Library
@FILENAME   JSPformattingDateJSTL.jsp
@NOTES      1) Download the JSP JSTL tag lib (JSTL.jar)
               from apache.com, Place the JSTL.jar in 
               "Tomcat\lib" folder.
            2) FORMATTING JSTL Tags,
               2.1) Using fmt:formatDate and fmt:parseDate
               2.2) Reference Data-Time Formats
               2.3) Setting TimeZone Using the fmt:setTimeZone
-->

<html>
   <head>
        <title> 
        Tinitiate.com: JSTL JavaServer Pages Standard Tag Library [FORMATTING TAGS]
        </title>
    </head>
    <body>
        <h2>tinitiate.com Using JSTL Standard Tag Library FORMATTING Tags to FORMAT DATE</h2>

        <!-- ######################################### -->
        <!-- Must ADD THIS LIBRARY for the Tag to Work -->
        <!-- ######################################### -->
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

        <!-- ######################################### -->
        <!-- FORMAT and PARSE DATE and TIMESTAMP       -->
        <!-- ######################################### -->
        <h3>tinitiate.com JSTL FORMAT and PARSE Dates and TimeStamps</h3>
        <p>FORM to demonstrate JSTL FORMAT and PARSE Dates and TimeStamps in JSP</p>
        <p>Enter a Date Value for Date_Value [Reference Formats Below]</p>
        <p>
			<b>Day Month Year</b>
			<br/>yyyy  year   2013
			<br/>MM    month  06 (june)
			<br/>dd    day of the month 01
            <br/><b>TimeStamp Formats</b>
			<br/>hh     hour(12-hour time) 12
			<br/>HH     hour(24-hour time) 16
			<br/>mm     minute
			<br/>ss     second
			<br/>S     millisecond
			<br/>a     a.m./p.m
			<br/>kk     hour(12-hour time) 24
			<br/>KK     hour(24-hour time) 0
			<br/>z     time zone
			<br/><b>Others</b>
			<br/>E     day of the week (Monday)
			<br/>D     day of the year
			<br/>F     day of the week in the month
			<br/>w     week in the year
			<br/>W     week in the month
			<br/>G     era designator AD/BC
        </p>

        <form action="JSPformattingDateJSTL.jsp">
            Enter value of "Date_Format" a Date Format: <input type="text" name="Date_Format" value = "dd-mm-yyyy"/><br/>
            Enter value of "Date_Value" a Date Value: <input type="text" name="Date_Value" value = "01-01-2013"/><br/>
            Demonstrate usage of JSTL "fmt" Tag with Date: <input type="submit" value="getDetails"/>
        </form>

        <!-- Check if the Date_Format and Date_Value are not null, if Not Null then Proceed -->
        <c:if test = "${param.Date_Format != null && param.Date_Value != null}">
	        <p> <b>Notes: </b>
                <br/> Using then tag: fmt:parseDate
                <br/> Declare a Variable using : var="--VARIABLE--NAME--"
                <br/> Assign a type using      : type="--TYPE--NAME--"
                <br/> Assign a Value using     : value="--SOME--VALUE--"
	        </p>

            <!-- Using fmt:parseDate -->
            <p>(1) Parsing InPut Date Format and Date Value using fmt:parseDate: </p>
            <fmt:parseDate var="in_date" type="date" pattern="${param.Date_Format}" value="${param.Date_Value}" />
            "Date Value Entered:" <c:out value="${in_date}" />

            <!-- Using fmt:formatDate -->
            <p>(2) Formatting a Java Date [java.util.Date()] to the desired Format in this case same as Date_Format</p>
            <fmt:formatDate var="out_date" type="date" pattern="${param.Date_Format}" value="<%=new java.util.Date()%>" />
            "Date Value Entered:" <c:out value="${out_date}" />
        </c:if>

        <br/>

        <!-- ######################################### -->
        <!-- DEMONSTRATE VARIOUS DATE FORMATS USAGE    -->
        <!-- ######################################### -->
        <h4> New Form to Print Java Date in the specified format.</h4>
        <p> Refer to the Reference Formats Above </p>
        <form action="JSPformattingDateJSTL.jsp">
            Enter value of "Date Format" to Print the System Date [ java.util.Date() ] <input type="text" name="Java_Date_Format" value = "dd-MM-yyyy hh:mm:ss a EE D F"/><br/>
            Demonstrate usage of JSTL "fmt" Tag with Date: <input type="submit" value="PrintDate"/>
        </form>
        <!-- Check if the Date_Format and Date_Value are not null, if Not Null then Proceed -->
        <c:if test = "${param.Java_Date_Format != null}">
	         <p>(2) Formatting a Java Date [java.util.Date()] to the desired Format in this case same as Date_Format</p>
	         <fmt:formatDate var="out_date" type="date" pattern="${param.Java_Date_Format}" value="<%=new java.util.Date()%>" />
	         "Date Value in the Specifed Format:" <c:out value="${out_date}" />
        </c:if>

         <h4>Setting TimeZone Demonstration, Using the fmt:setTimeZone </h4>
         <!-- ######################################### -->
         <!-- DEMONSTRATE Setting a TimeZone            -->
         <!-- ######################################### -->
         <c:set var="currTime" value="<%=new java.util.Date()%>" />
         Current Time and TimeZone: 
         <fmt:formatDate value="${currTime}" type="both" timeStyle="long" dateStyle="long" />
         <br/>
         Set the Time Zone to PST, using fmt:setTimeZone:  
         <fmt:setTimeZone value="PST" />
         <br/>
         Current Time in TimeZone PST:
         <fmt:formatDate value="${currTime}" type="both" timeStyle="long" dateStyle="long" />
    </body>
</html>
