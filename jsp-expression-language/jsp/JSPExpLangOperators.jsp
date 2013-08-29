<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Expression Language Operators
@FILENAME   JSPExpLangOperators.jsp
@NOTES      1) Expression Language (EL) provides identifiers and operators for
               accessing and modifying data in a JSP.
            2) The Expression is enclosed in /$/{/}
            3) Its a simple scripting language that can be embedded in the JSP
            4) Provides access to Java Objects and creating some inline functionality.
            5) It is similar to JavaScript in terms of usage and purpose.
            6) Provides various operators in Expression Language in JSP.
            7) Provides Conditional statements.
-->

<html>
   <head>
        <title>tinitiate.com: Expression Language Operators</title>
   </head>
    <body>
        <h3>Tinitiate.com Using JSP Expression Language Operators</h3>
        
        <!-- (1) EXPRESSION LANGUAGE Using Escape Character -->    
        <h5>
          1) Escape Character \\<br>
        </h5>
        <p>
            ${'Tinitiate.com prints BackSlash \\'}
        </p>
        
        <!-- (2) EXPRESSION LANGUAGE Creating and Using variables -->
        <h5>
          2) Creating Variables<br>
        </h5>
        <p>
            Create a Variable with request.setAttribute("v_message","This is tinitiate.com");
             <br/>   
            <!-- Create a Variable -->
            <% request.setAttribute("v_message","This is tinitiate.com"); %>
            <!-- Print the Variable using Expression Language -->
            <jsp:text>
                ${v_message}
            </jsp:text>
        </p>

        <!-- (3) EXPRESSION LANGUAGE Using Simple Operators -->
        <h5>
          3) Using Simple Operators<br>
        </h5>
        <p> This is the Parent JSP Page that calls the Child 
            JSP page (Itself) to demonstrate Expression Language
        </p>
        <form action="JSPExpLangOperators.jsp">
            Enter Value 1:<input type="text" name="textBox1" /><br/>
            Enter Value 2:<input type="text" name="textBox2" /><br/>
            <input type="submit" value="Next"/>
        </form>

        <!-- EXPRESSION LANGUAGE DEMONSTRATION  -->
        <jsp:text>
        Value 1 : ${param.textBox1} ${"<br/>"}
        Value 2 : ${param.textBox2} ${"<br/>"}
        Sum of Value 1 and Value 2: ${param.textBox1 + param.textBox2}     ${"<br/>"}
        Product of Value 1 and Value 2: ${param.textBox1 * param.textBox2} ${"<br/>"}
        Remainder(modulus) of Value 1 and Value 2: ${param.textBox1 % param.textBox2} ${"<br/>"}
        </jsp:text>

        <!-- (4) CONDITIONAL STATEMENTS IF ElSE  -->
        <h5>
          4) Using Conditional Statement, Using the ternary operator<br>
             Prints EVEN or ODD using
        </h5>
        <form action="JSPExpLangOperators.jsp">
            Enter Number:<input type="text" name="v_someNumber" /><br/>
            <input type="submit" value="Go.."/>
        </form>
        <p>
           The value <jsp:text> ${param.v_someNumber} </jsp:text> 
           is ${(param.v_someNumber % 2 == 1) ? 'ODD' :'EVEN'} number.
        </p>
    </body>
</html>
