// MUST BE IN A PACKAGE
package tinitiatejsp;
/**
 * 
 * @AUTHOR Tinitiate
 * @FILENAME TinitiateJSPbeanClass.java 
 * @NOTES  1) This class is a Bean Class (JUST a REGULAR JAVA CLASS)
 *         2) This class provides methods to calculate basic arithmetic. 
 *         3) MAKE SURE THE BEAN CLASS is in a PACKAGE and not in the DEFAULT PACKAGE
 */
public class TinitiateJSPbeanClass {

    public int getSum(int n1, int n2)  { return n1+n2; };
    public int getDiff(int n1, int n2) { return n1-n2; };
    public int getProd(int n1, int n2) { return n1*n2; };
    
    public int compute(String ops, int n1, int n2) {
        if (ops.toLowerCase().equals("sum")) {
            //System.out.println("Sum Result..");
            return getSum(n1,n2); }
        else if (ops.toLowerCase().equals("diff")) {
            //System.out.println("Diff Result..");
            return getDiff(n1,n2); }
        else if (ops.toLowerCase().equals("product")) {
            //System.out.println("Product Result..");
            return getProd(n1,n2); }
        else {
            //System.out.println("No Action");
            return 0;
        }
    }
}
