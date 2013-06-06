/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package medicarepms;


public class Receiptionist extends Staff{
    private String rid;
    
    public Receiptionist(String fname,String lname,String address,String password,String sid,String nic,String aid)
    {
        super(fname, lname, address, password, sid, nic);
        this.rid=rid;
    }
    
}
