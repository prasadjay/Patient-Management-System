/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package medicarepms;

/**
 *
 * @author PRASAD
 */
public class Admin extends Staff {
    
    private String aid;
    
    public Admin(String fname,String lname,String address,String password,String sid,String nic,String aid)
    {
        super(fname, lname, address, password, sid, nic);
        this.aid=aid;
    }
    
    
    // GETTERS
    
    public String getAdminFname()
    {
        return this.getFnameFromStaff();
    }
    
    public String getAdminLname()
    {
        return this.getLnameFromStaff();
    }
    
    public String getAdminAddress()
    {
        return this.getAddressFromStaff();
    }
    
    public String getAdminPassword()
    {
        return this.getPasswordFromStaff();
    }
    
    public String getAdminStaffID()
    {
        return this.getStaffIDFromStaff();
    }
    
    public String getAdminNIC()
    {
        return this.getNICFromStaff();
    }
    
    public String getAdminID()
    {
        return this.aid;
    }
    
    
}
