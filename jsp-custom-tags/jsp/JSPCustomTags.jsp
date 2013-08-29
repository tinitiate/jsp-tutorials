<!--
@AUTHOR     Tinitiate.com
@TOPIC      JavaServer Pages Custom Tag Library
@FILENAME   JSPCustomTags.jsp
@NOTES      1) Custom or User defined Tags can be created
               and used in the JSP.
            2) Custom tag implementation has a Java Class
               called as Tag handlers, TLDs (Tag Library 
               Descriptors an XML file) and the JSP using
               the custom Tags.
            3) FILES NEEDED TO RUN THIS PROGRAM:
               * JSPCustomTags.tld
                    Place this file in the /WEB-INF/ Folder.
               * JSPCustomTags.jsp
                    This is this JSP file.
               * TinitiateJSPCustomTagsSKIP_BODY.java
                    > This Java File has the code to Handle the
                      SKIP_BODY (No Action on any Text between the
                      Tag Start and End.)
               * TinitiateJSPCustomTagsEVAL_BODY_INCLUDE
                    > This java handles the body(text) of 
                      the tag and Processing is done by the class
                      by looping and printing the same text 
                      multiple times.
-->
<%@taglib uri="/WEB-INF/CustomTagDescriptor.tld" prefix="tinitiate" %>
<html>
   <head>
        <title> 
        Tinitiate.com: JSTL JavaServer Pages Custom Tags
        </title>
    </head>
    <body>
        <h2>This JSP Demonstrates the Custom Tag Usage</h2>
        <p>Make sure to include the JSPCustomTags.tld
        <br/> and the Java files
        </p>

        <!-- (1) ####################################### -->
        <!-- CUSTOM Tag with SKIP BODY, Which is the 
             TEXT inbetween the Tag start and End is not
             used for processing                         -->
        <!-- ########################################### -->
        <h3>(1) CUSTOM TAG, No Change to the Tag Text,
                Data printed comes from the JAVA program
        </h3>
        <p>Prints the system time in the cell Color specified </p>

        <!-- Calling the Custom Tag tinitiate:DateBox -->
        <tinitiate:DateBox tableBorder="1" cellColor="lightblue" />

        <!-- (2) ####################################### -->
        <!-- CUSTOM Tag with SKIP BODY, Which is the 
             TEXT between the Tag start and End is  used 
             for processing                         -->
        <!-- ########################################### -->
        <h3>(2) CUSTOM TAG, Print the Tag Text, 5 times </h3>
        <p>Prints the Tag Body text as many times as the 
           printIterations value </p>
        <!-- Calling the Custom Tag tinitiate:IterativePrinter -->
        <tinitiate:IterativePrinter printIterations="5" >
        Tinitiate Custom Tags
        </tinitiate:IterativePrinter>

        <!-- (3) ####################################### -->
        <!-- CUSTOM Tag using the doTag, Captures the 
             TEXT between the Tag start and End is  used 
             for processing  And the Attributes          -->
        <!-- ########################################### -->
        <h3>(3) CUSTOM TAG, Print the Tag Text and the Tag Attribute </h3>
        <p>CUSTOM Tag using the doTag, Captures the 
           TEXT between the Tag start and End is  used 
           for processing  And the Attributes   </p>
        <!-- Calling the Custom Tag tinitiate:IterativePrinter -->
        <tinitiate:DoTAGdemo tagAttributeValue="Tinitiate Attribute Value" >
            This is the Body Tag Text
        </tinitiate:DoTAGdemo>
    </body>
</html>
