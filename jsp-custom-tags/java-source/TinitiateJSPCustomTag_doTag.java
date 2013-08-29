/**
 * @AUTHOR   Tinitiate
 * @FILENAME TinitiateJSPCustomTag_doTag.java
 * @NOTES    1) This JAVA CLASS TinitiateJSPCustomTag_doTag
 *           2) This class demonstrates the use of the dotag Method
 *              * Prints data from the Java Class (Bean).
 *              * Reads the Body text in the JSP custom tag,
 *                that uses this bean.
 *           3) Uses getJspContext() to Read Attributes and
 *              getJspBody() with invoker to read the Body 
 *              Text in between the custom Tags.
 *           
 */
package tinitiatejsp;
import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;

// This class inherits the class SimpleTagSupport
public class TinitiateJSPCustomTag_doTag extends SimpleTagSupport {

   // Attribute of the CustomTag, Creating any 
   // attribute with a setter becomes an attribute of the tag.
   private String tagAttributeValue;
   private String TagBodyText;
   
   // Variable to store the Tag Body Text, in the JSP, the variables 
   // looks likes the below; in the JSP

   // <CustomTag TagAttribute = "TagAttributeValue" >
   //  -- The above is captured in variable TagAttributeValue
   //     TagBodyText <-- This is captured in Variable TagBodyText
   // </CustomTag>

   // OverRide the method doTag
   @Override
   public void doTag()
      throws JspException, IOException
    {
       /*******************************************
        *  Read and Print the Custom Tag Attribute 
        *******************************************/
       if (tagAttributeValue != null) {
          /* Use message from attribute */
          JspWriter outTagAttribute = getJspContext().getOut();
          outTagAttribute.println( tagAttributeValue );
       }

      /***********************************************************
       *  Read and Print the Text in between the Custom Tags
       *  and Print the text back to the JSP page with additional
       *  text message
       **********************************************************/
       // StringWriter to read from invoke() method
       StringWriter bodyTextSW = new StringWriter();

       // Call the Invoke with the StringWriter 
       getJspBody().invoke(bodyTextSW);
       // Create a JspWriter object and Print message 
       JspWriter outBodyText = getJspBody().getJspContext().getOut();
       outBodyText.println("<br/> JSP Message read from JAVA code: " + bodyTextSW.toString());
   }

   // Setters for the TagAttributeValue and TagBodyText 
   public void settagAttributeValue(String tagAttributeValue) {
       this.tagAttributeValue = tagAttributeValue;
   }

}
