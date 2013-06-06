/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package medicarepms;

/**
 *
 * @author Abc
 */
public class Admin extends Staff {
    
    private String aid;
    
    public Admin(String fname,String lname,String address,String password,String sid,String nic,String aid)
    {
        super(fname, lname, address, password, sid, nic);
        this.aid=aid;
    }
    
}
