/**
 * 
 * @AUTHOR   Tinitiate
 * @FILENAME TinitiateJSPbeanProperty.java
 * @NOTES    1) This JAVA CLASS TinitiateJSPbeanProperty, 
 *              the attributes (variables) of this class 
 *              can be Set and Get by the  jsp:setProperty
 *              and jsp:getProperty 
 *              It is automatically done by using the getter and setter 
 *              methods of the class.
 *            
 */ 
package tinitiatejsp;

public class TinitiateJSPbeanProperty {
    
    int    dataInt;
    String dataString;
    
    public void setDataInt(int dataInt) {
        this.dataInt = dataInt;
    }

    public void setDataString(String dataString) {
        this.dataString = dataString;
    }

    public int getDataInt() {
        return dataInt;
    }

    public String getDataString() {
        return dataString;
    }
}
