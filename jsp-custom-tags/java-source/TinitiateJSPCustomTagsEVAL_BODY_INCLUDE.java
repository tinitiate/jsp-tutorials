/**
*
* @AUTHOR   Tinitiate
* @FILENAME TinitiateJSPCustomTagsEVAL_BODY_INCLUDE.java
* @NOTES    1) This JAVA CLASS TinitiateJSPCustomTagsEVAL_BODY_INCLUDE,
*              creates a Custom Tag to be used in JSP files.
*           2) Place this file ion the Java Resources folder of
*              the Eclipse Editor, the attributes (variables)of
*              this class can be used as attributes in the Tags in
*              the JSP.
*           3) The Class TagSupport must be inherited  and the methods
*              doAfterBody() should be overRidden as needed.
*           4) return EVAL_BODY_INCLUDE Constant: This is the return of 
*              the doAfterBody(), The JSP engine Passes the body(text) of 
*              the tag to this class, and Processing can be done by the class
*              and the processed text can be sent back to the JSP. 
*           5) doStartTag(), This method handles post-tag, server 
*              side operations if any.
*           6) This JAVA Class demonstrates a Tag with Body Text, and performs 
*              some Server side action using that Body text of the Custom Tag.
*              <prefix:MyCustomTag> BODY TEXT </prefix:MyCustomTag>
*
*/
package tinitiatejsp;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class TinitiateJSPCustomTagsEVAL_BODY_INCLUDE extends BodyTagSupport {

   // These attributes become the attributes of the tag
   private int printIterations;
   // Object to read the Text Body in the Custom tags 
   private BodyContent bodyContent;
   // String to Capture the body
   private String body;
   // A Variable to capture the Body text in the First read 
   // Initialized to ZERO
   private int OrginalIterationCount = 0;

/**
    *  Override the doAfterBody() method Close the 
    *  HTML tag for the table that is created by the 
    *  doStartTag method. This Method doAfterBody()
    *  loops until it encounters  return SKIP_BODY;
    */
   @Override
   public int doAfterBody() {
       // If the printIterations is not the Initialization Value
       // Only then use the printIterations Value
       if (OrginalIterationCount == 0) {
          OrginalIterationCount = printIterations;
       }

         if (printIterations < 1) {
             return SKIP_BODY;
         }
         else {
             // This Method doAfterBody() loops until
             // it encounters  return SKIP_BODY;
             // So capturing the Body of the Tag
             // text from JSP in the first iteration
             if (OrginalIterationCount == 0) {
                 bodyContent = getBodyContent();
                 body = bodyContent.getString();
             }
             JspWriter out = bodyContent.getEnclosingWriter();

             try {
                 out.print("Printing "); 
                 out.print(body);
                 out.print(" Iteration# " + printIterations + "<br/>");
             } catch (Exception e) { e.printStackTrace(); }
             printIterations--;
             
             /**
              *  This return make sure the Method iterates
              *  unless the return SKIP_BODY; is encountered
              */
             return  EVAL_BODY_AGAIN;
         }
   }

    // Getters and Setters for all the variables declared
    public int getprintIterations() {
        return printIterations;
    }
    public void setprintIterations(int printIterations) {
        this.printIterations = printIterations;
    }
    public int getOrginalIterationCount() {
        return OrginalIterationCount;
    }
    public void setOrginalIterationCount(int orginalIterationCount) {
        OrginalIterationCount = orginalIterationCount;
    }
    public BodyContent getBodyContent() {
        return bodyContent;
    }
    public void setBodyContent(BodyContent bodyContent) {
        this.bodyContent = bodyContent;
    }
    public String getBody() {
        return body;
    }
    public void setBody(String body) {
        this.body = body;
    }
}
