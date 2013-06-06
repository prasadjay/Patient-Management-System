/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package medicarepms;


public class LabAssistant extends Staff {

    private String lid;

    public LabAssistant(String fname, String lname, String address, String password, String sid, String nic, String lid) {
        super(fname, lname, address, password, sid, nic);
        this.lid = lid;
    }
    
      public String getLabAssistantFname()
    {
        return this.getFnameFromStaff();
    }
    
    public String getLabAssistantLname()
    {
        return this.getLnameFromStaff();
    }
    
    public String getLabAssistantAddress()
    {
        return this.getAddressFromStaff();
    }
    
    public String getLabAssistantPassword()
    {
        return this.getPasswordFromStaff();
    }
    
    public String getLabAssistantStaffID()
    {
        return this.getStaffIDFromStaff();
    }
    
    public String getLabAssistantNIC()
    {
        return this.getNICFromStaff();
    }
    
    public String getLabAssistantID()
    {
        return this.lid;
    }
}
