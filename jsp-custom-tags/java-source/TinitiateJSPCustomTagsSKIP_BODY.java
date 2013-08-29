/**
 *
 * @AUTHOR   Tinitiate
 * @FILENAME TinitiateJSPCustomTagsSKIP_BODY.java
 * @NOTES    1) This JAVA CLASS TinitiateJSPCustomTags,
 *              creates a Custom Tag to be used in JSP files.
 *           2) Place this file ion the Java Resources folder of
 *              the Eclipse Editor, the attributes (variables)of
 *              this class can be used as attributes in the Tags in
 *              the JSP.
 *           3) The Class TagSupport must be inherited  and the methods
 *              doStartTag(), doEndTag(), doAfterBody() should be overRidden
 *              as needed.
 *           4) return SKIP_BODY Constant: This is the return of the doStartTag()
 *              JSP engine skips the body of the tag and returns this value 
 *              if the tag is an empty-body tag. (Applicable for no content 
 *              in the tag in JSP). The next method invoked is doStartTag(); 
 *           5) doStartTag(), This method handles post-tag, server 
 *              side operations if any.
 *           6) This JAVA Class demonstrates a Tag with no Body, but performs 
 *              some Server side action.( Printing system date in a HTML table)                   
 *
 */
package tinitiatejsp;

import java.io.IOException;
import java.util.Date;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class TinitiateJSPCustomTagsSKIP_BODY extends TagSupport {

    // These attributes become the attributes of the tag
    private int tableBorder;
    private String cellColor;

    /**
     *  Override the doStartTag() method
     *  Print the System Time in a HTML table
     *  Accepts the HTML table Border and Cell color
     *  as the parameters
     */
    @Override
    public int doStartTag() throws JspException {
        try {
            //Get the writer object for output.
            JspWriter out = pageContext.getOut();
            out.println("Tinitiate");
            out.println("<table border=\""+ tableBorder + "\"" 
                        + " bgcolor=" + "\"" + cellColor 
                        + "\"" + "\">");

            out.println("<tr><td>" + new Date() + "</td></tr>");

        } catch (IOException e) {
                e.printStackTrace(); }
        // Return SKIP_BODY indicates to ignore the text 
        // in-between the tags in the JSP page
        return SKIP_BODY;
    }

    /**
     *  Override the doEndTag() method Close the HTML
     *  tag for the table that is created by the 
     *  doStartTag method.
     */
    @Override
    public int doEndTag() throws JspTagException {
        try {
             JspWriter out = pageContext.getOut();
            out.println("</table>");
        } catch (Exception ex){
             ex.printStackTrace();
        }
        // Continue with rest of JSP page execution
        return EVAL_PAGE;
     }

    // Getters and Setters for the Class Attributes
    public int gettableBorder() {
        return tableBorder;
    }
    public void settableBorder(int tableBorder) {
        this.tableBorder = tableBorder;
    }
    public String getcellColor() {
        return cellColor;
    }
    public void setcellColor(String cellColor) {
        this.cellColor = cellColor;
    }
}
