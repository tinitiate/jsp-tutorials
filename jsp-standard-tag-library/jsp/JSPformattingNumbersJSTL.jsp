<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSTL JavaServer Pages Standard Tag Library
@FILENAME   JSPformattingNumbersJSTL.jsp
@NOTES      1) Download the JSP JSTL tag lib (JSTL.jar)
               from apache.com, Place the JSTL.jar in 
               "Tomcat\lib" folder.
            2) FORMATTING JSTL Tags,
               2.1) Using fmt:parseNumber and fmt:formatNumber
               2.2) Using fmt:parseNumber to Print Integer Only
               2.3) Using fmt:parseNumber to Decimal Places using minFractionDigits
               2.4) Using fmt:parseNumber to Decimal Places using maxFractionDigits 
               2.5) Using fmt:parseNumber to Integer Digits using maxIntegerDigits
               2.6) Using fmt:parseNumber to Integer Digits using minIntegerDigits 
               2.7) Using fmt:parseNumber to parse var1 as currency
               2.8) Using fmt:parseNumber to parse var1 as PERCENTAGE
-->

<html>
   <head>
        <title> 
        Tinitiate.com: JSTL JavaServer Pages Standard Tag Library [FORMATTING TAGS]
        </title>
    </head>
    <body>
        <h1>tinitiate.com Using JSTL Standard Tag Library FORMATTING Tags to Format Numbers</h1>

        <!-- ######################################### -->
        <!-- Must ADD THIS LIBRARY for the Tag to Work -->
        <!-- ######################################### -->
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

        <!-- ######################################### -->
        <!-- FORMAT and PARSE NUMBERS                  -->
        <!-- ######################################### -->
        <h3>tinitiate.com JSTL FORMAT and PARSE NUMBERS </h3>
        <p>FORM to demonstrate JSTL FORMAT and PARSE NUMBERS in JSP</p>
        <form action="JSPformattingNumbersJSTL.jsp">
            Enter value of "var1" a Number(With Decimals): <input type="number" name="var1" value = "123456.54321"/><br/>
            Demonstrate usage of JSTL "fmt" Tag: <input type="submit" value="getDetails"/>
        </form>

        <!-- Check if the var1 is null or not, if Not Null then Proceed -->
        <c:if test = "${param.var1 != null}">
            <!-- Print the Tag Usage details -->
            <p>  <b>Notes: </b>
                 <br/> Using then tag: fmt:parseNumber 
                 <br/> Declare a Variable using : var="--VARIABLE--NAME--"
                 <br/> Assign a type using      : type="--TYPE--NAME--" 
                 <br/> Assign a Value using     : value="--SOME--VALUE--"
            </p>

            <!-- Using fmt:parseNumber -->
	        <p>(1) Parsing var1 using fmt:parseNumber: </p>
	        <fmt:parseNumber var="l_number" type="number" value="${param.var1}" />
	        <c:out value="${l_number}" /> <br/>

            <!-- Using fmt:parseNumber to Print Integer Only -->
	        <p>(2) Parsing the Integer (No Decimals) of var1 using integerOnly="true" :  </p>
            <fmt:parseNumber var="l_integer" integerOnly="true" type="number" value="${param.var1}" />
            <c:out value="${l_integer}" /> <br/>

            <!-- Using fmt:parseNumber to Decimal Places using minFractionDigits -->
            <p>(3) Parsing the Number to Print Decimal places (8 Decimal Places) of var1 using minFractionDigits="8" :  </p> 
            <fmt:formatNumber var="l_decimal" value="${param.var1}" type="NUMBER" minFractionDigits="8"></fmt:formatNumber>
            <c:out value="${l_decimal}" /> <br/>

            <!-- Using fmt:parseNumber to Decimal Places using maxFractionDigits -->
            <p>(4) Parsing the Number to Print Decimal places (3 Decimal Places) of var1 using maxFractionDigits="3" :  </p> 
            <fmt:formatNumber var="l_decimal" value="${param.var1}" type="NUMBER" maxFractionDigits="3"></fmt:formatNumber>
            <c:out value="${l_decimal}" /> <br/>

            <!-- Using fmt:parseNumber to Integer Digits using maxIntegerDigits -->
            <p>(5) Parsing the Number to Print Decimal places (3 Digits) of var1 using maxIntegerDigits="3" :  </p> 
            <fmt:formatNumber var="l_integer" value="${param.var1}" type="NUMBER" maxIntegerDigits="3"></fmt:formatNumber>
            <c:out value="${l_integer}" /> <br/>

            <!-- Using fmt:parseNumber to Integer Digits using minIntegerDigits -->
            <p>(6) Parsing the Number to Print Decimal places (8 Digits) of var1 using minIntegerDigits="8" :  </p> 
            <fmt:formatNumber var="l_integer" value="${param.var1}" type="NUMBER" maxIntegerDigits="8"></fmt:formatNumber>
            <c:out value="${l_integer}" /> <br/>

            <!-- Using fmt:parseNumber to parse var1 as currency -->
            <p>(7) Converting var1 to a currency using fmt:setLocale and fmt:formatNumber type="CURRENCY":</p> 
            <fmt:setLocale value="en_US"/>
            <fmt:formatNumber var="l_currency" value="${param.var1}" type="CURRENCY"></fmt:formatNumber>
            <c:out value="${l_currency}" /> <br/>

            <!-- Using fmt:parseNumber to parse var1 as PERCENTAGE -->
            <p>(8) Converting var1 to PERCENT fmt:formatNumber type="percent":</p> 
            <fmt:setLocale value="en_US"/>
            <fmt:formatNumber var="l_percent" value="${param.var1}" type="percent" maxIntegerDigits="2"></fmt:formatNumber>
            <c:out value="${l_percent}" /> <br/>

        </c:if>
    </body>
</html>
