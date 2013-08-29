<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Expression Language Basics
@FILENAME   JSPExpLangWithJavaClass.jsp
@NOTES      1) Expression Language (EL) provides identifiers and operators for
               accessing and modifying data in a JSP.
            2) This program demonstrates the calling of a Java class using Expression Language.
@FILES      JSPExpLangWithJavaClass.jsp, TinitiateExpLangWithJava.java
-->

<html>
   <head>
        <title>tinitiate.com: Expression Language With Java Class</title>
   </head>
    <body>
        <h3>Calling Java Class TinitiateExpLangWithJava</h3>
        <p>
            Accessing the attributes of the Class : TinitiateExpLangWithJava
            Using Expression Language.
        </p>
        
        <h5>Step 1: Create a Bean, Using the jsp:useBean tag</h5>
        <!-- Create a Bean --> 
        <jsp:useBean id="tiniateBean" class="tinitiatejsp.TinitiateExpLangWithJava"  scope="request" />

        <h5>Step 2: Set the Class Attribute with a value Using the jsp:setProperty tag</h5>
        <!-- Set Values to the Attributes of the Class -->
        <jsp:setProperty name = "tiniateBean" property = "tinitiateVar1" value = "100"/>
        <jsp:setProperty name = "tiniateBean" property = "tinitiateVar2" value = "200"/>
        
         <h5>Step 3: Call the Bean(Class) Attributes, using the Expression Language.</h5>
         <!-- Call the sum() method of the TinitiateExpLangWithJava class -->
         <p> The Value assigned to TinitiateExpLangWithJava.tinitiateVar1 : ${ tiniateBean.tinitiateVar1 }
             The Value assigned to TinitiateExpLangWithJava.tinitiateVar2 : ${ tiniateBean.tinitiateVar2 }
         </p>
    </body>
</html>
