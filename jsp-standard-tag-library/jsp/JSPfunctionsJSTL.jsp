<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSTL JavaServer Pages Standard Tag Library
@FILENAME   JSPfunctionsJSTL.jsp  [Save this JSP File with this name]
@NOTES      1) Download the JSP JSTL tag lib (JSTL.jar)
               from apache.com, Place the JSTL.jar in 
               "Tomcat\lib" folder.
			2) fn:<Function> Tag is a set of functions that can be used for 
			                 String manipulation
				fn:length()             Returns Length of String
				fn:toLowerCase()        Converts String to LowerCase
				fn:toUpperCase()        Converts String to UpperCase
				fn:contains()           Returns True/False, if the specified string 
				                        is found in a given string
				fn:containsIgnoreCase() Returns True/False, if the specified string 
				                        is found in a given string, by ignoring case
				fn:indexOf()            Returns the index of a search string in a given string
				fn:substring()          Returns subset of a string.
				fn:substringAfter()     Returns subset of a string after a pattern (String)
				fn:substringBefore()    Returns subset of a string before a pattern (String)
				fn:replace()            Returns replacing a given string with a replace pattern(String)
				fn:startsWith()         Returns True/False if the given string starts with a 
				                        given pattern(String)
				fn:endsWith()           Returns True/False if the given string ends with a 
				                        given pattern(String)
				fn:trim()               Removes white spaces from both ends of a string
				fn:join()               Joins elements of an array into a string
				fn:split()              Splits a string, by the specified dilimeter into an array
-->

<html>
   <head>
        <title> Tinitiate.com: JSTL JavaServer Pages Standard Tag Library [FUNCTION TAGS] </title>
   </head>
   <body>
        <h1>tinitiate.com JSTL FUNCTIONS</h1>
        <!-- ######################################### -->
        <!-- Must ADD THIS LIBRARY(s) for the Tag to Work -->
        <!-- ######################################### -->
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

        <!-- ######################################### -->
        <!-- Test String for this DEMO                 -->
        <!-- ######################################### -->
        <c:set var="testString" value="JSP Training From Tinitiate"/>
        
        <p><b>Using the testString:</b> </p> 
        <h2> "${testString}" </h2>

        <!-- ######################################### -->
        <!-- Function Details in the H5 tag            -->
        <!-- ######################################### -->

        <!-- fn:length -->
        <h5>(1) JSTL Functions: Length of testString; Usage: [fn:length(testString)]:</h5>
        <p> ${fn:length(testString)}</p>

        <!-- fn:toLowerCase -->
        <h5>(2) JSTL Functions: toLowerCase of testString using [fn:toLowerCase(testString)]:</h5>
        <p> ${fn:toLowerCase(testString)} </p>

        <!-- fn:toUpperCase -->
        <h5>(3) JSTL Functions: toUpperCase of testString using [fn:toUpperCase(testString)]:</h5>
        <p> ${fn:toUpperCase(testString)} </p>

        <!-- fn:contains -->
        <h5>(4) JSTL Functions: contains, Search for the string "Tinitiate" in testString 
            Using [fn:contains(testString, 'Tinitiate')]:</h5>
        <c:if test="${fn:contains(testString, 'Tinitiate')}">
            <p>Tinitiate Found in string: "${testString}"<p>
        </c:if>

        <!-- fn:containsIgnoreCase -->
        <h5>(5) JSTL Functions: containsIgnoreCase, Ignore the Case Search for the 
                string "TIniTiAte" in of testString [fn:containsIgnoreCase(testString, 'Tinitiate')]: </h5>
        <c:if test="${fn:containsIgnoreCase(testString, 'TIniTiAte')}">
           <p>Ignoring text case, TIniTiAte Found in string: "${testString}"<p>
        </c:if>
        
        <!-- fn:indexOf -->
        <h5>(6) JSTL Functions: indexOf of testString using [fn:indexOf(testString,"Tinitiate")]:</h5> 
        <p> ${fn:indexOf(testString,"Tinitiate")}</p>

        <!-- fn:substring -->
        <h5>(7) JSTL Functions: substring of testString using [fn:substring(testString,1,10)]:</h5>
        <p> ${fn:substring(testString,1,10)} </p>

        <!-- fn:substringAfter -->
        <h5>(8) JSTL Functions: substringAfter string: "From" in testString using 
                [fn:substringAfter(testString,"From")]:</h5>
        <p>${fn:substringAfter(testString,"From")} </p>

        <!-- fn:substringBefore -->
        <h5>(9) JSTL Functions: substringBefore string: "From" in testString using 
                [fn:substringBefore(testString,"From")]:</h5>
        <p>${fn:substringBefore(testString,"From")} </p>

        <!-- fn:startsWith -->
        <h5>(10) JSTL Functions: startsWith String "JSP" in testString using 
                 [fn:startsWith(testString,"JSP")]:</h5>
        <p>${fn:startsWith(testString,"JSP")} </p>

        <!-- fn:endsWith -->
        <h5>(11) JSTL Functions: endsWith String "Tinitiate" in testString using 
                 [fn:endsWith(testString,"Tinitiate")]:</h5>
        <p>${fn:endsWith(testString,"Tinitiate")} </p>

        <!-- fn:replace -->
        <h5>(12) JSTL Functions: replace a pattern ("Tinitiate") in the testString using
                 [fn:replace(testString,"Tinitiate","Tinitiate.com")]:</h5>
        <p>${fn:replace(testString,"Tinitiate","Tinitiate.com")}</p>

        <!-- fn:trim -->
        <h5>(13) JSTL Functions: trim extra Space and Tabs in the String: "  simpleTest  "
                 using [fn:trim("  simpleTest  ")]:</h5>
        <p>${fn:trim("  simpletest  ")} </p>

        <!-- fn:split -->
        <!-- fn:join  -->
        <h5>(14) JSTL Functions: split and join </h5>
        <p>
            <p>(14.1) Split function Splits a String based on a Dilimeter and returns an
                      array [fn:split(testString,"DILIMETER")]:</p>
                      Splitting the testSring by the SPACE as dilimeter, into variable: "tArray" and 
                      Printing each element <br/>
            <c:forEach var="tArray" items="${fn:split(testString, ' ')}">
                <c:out value="${tArray}" />
            </c:forEach>

            <p>(14.2) Join function joins a Array based on a Dilimeter and returns a 
                      string [fn:join(testStringArray,"DILIMETER")]:</p>
            Create a Variable tArray, by splitting the "testString" by dilimeter "SPACE"
            Joining the array tArray, dilimeter with the dilimeter + a single string: <br/>
           <c:set var="tArray" value="${fn:split(testString,' ')}" />
           <c:out value="${fn:join(tArray,'+')}" />
        </p>
   </body>
</html>
