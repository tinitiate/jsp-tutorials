<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Expression Language Basics
@FILENAME   JSPExpLangParentPage.jsp
@NOTES      1) Expression Language (EL) provides identifiers and operators for
               accessing and modifying data in a JSP.
            2) The Expression is enclosed in ${}
            3) Its a simple scripting language that can be embedded in the JSP
            4) Provides access to Java Objects and creating some inline functionality.
            5) It is similar to JavaScript in terms of usage and purpose.
-->

<html>
   <head>
        <title>tinitiate.com: Expression Language</title>
   </head>
    <body>
        <h3>Tinitiate.com JSP Expression Language </h3>    
        <p>
          1) Expression Language (EL) provides identifiers and operators for<br>
               accessing and modifyng data in a JSP.<br>
        </p>
        <h4> This is the Parent JSP Page that calls the Child JSP page 
             to demonstrate Expression Language</h4>

		<form action="JSPExpLangParentPage.jsp">
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
		</jsp:text>

    </body>
</html>
