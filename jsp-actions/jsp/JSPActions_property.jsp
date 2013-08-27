<!--
@AUTHOR     Tinitiate.com
@TOPIC      JSP Actions: setProperty and getProperty
@FILENAME   JSPActions_property.jsp
@GROUP-CODE 
@NOTES      1) JSP provides XML like Action TAGs for various operations
               such as control of flow between pages and calling Java Beans
               Java Beans: They are reusable they are classes that encapsulate 
                           many objects into a single object (the bean).
            2) Action: setProperty and getProperty\
            3) Files JSPActions_property.jsp, TinitiateJSPbeanProperty.java
-->
<html>
    <head>
       <title>Tinitiate JSP Action: include example</title>
    </head>
    <%@page import="tinitiatejsp.TinitiateJSPbeanProperty" %>
    <body>
       <h4>Tinitiate: This JSP Sets and Gets the Variables of the Class tinitiatejsp.TinitiateJSPbeanProperty</h4>

       <jsp:useBean id="beanData" class="tinitiatejsp.TinitiateJSPbeanProperty"/>

       <!-- Set the Values of the Class tinitiatejsp.TinitiateJSPbeanProperty --> 
       <jsp:setProperty name="beanData"
		                property="dataInt"
		                value="100" />

       <jsp:setProperty name="beanData"
                        property="dataString"
                        value="This is the New Value" />

       <!-- Get the Values of the Class tinitiatejsp.TinitiateJSPbeanProperty
            that were just set
        -->
        <p>Read the Variable values of the tinitiatejsp.TinitiateJSPbeanProperty</p>
       <jsp:getProperty name="beanData" property="dataInt" />
       <jsp:getProperty name="beanData" property="dataString" />
    </body>
</html>
