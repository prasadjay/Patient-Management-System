/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package medicarepms;

import java.sql.Connection;


public class Staff {
    
     private Dbconnect dbcon2;
    private Connection cname2;

    private String fname,lname,address,password,sid,nic;
    
    public Staff(String fname,String lname,String address,String password,String sid,String nic)
    {
        this.fname=fname;
        this.address=address;
        this.lname=lname;
        this.password=password;
        this.sid=sid;
        this.nic=nic;
                
    }
    public Staff()
    {
        
    }
    
    // GETTERS
    
    public String getFnameFromStaff()
    {
        return this.fname;
    }
    
    public String getLnameFromStaff()
    {
        return this.lname;
    }
    
    public String getAddressFromStaff()
    {
        return this.address;
    }
    
    public String getPasswordFromStaff()
    {
        return this.password;
    }
    
    public String getStaffIDFromStaff()
    {
        return this.sid;
    }
    
    public String getNICFromStaff()
    {
        return this.nic;
    }
    
    //DB stuff
    
    public boolean addNewStaffMember(String query)
    {
        
        dbcon2=new Dbconnect(); //databse connection object from Dbconnect class;
                cname2=dbcon2.connect();//save the connection
                
        int x = dbcon2.executeNonQuery(query);
           
           if(x==-1)
               return false;
           else
               return true;
    }
    
    
}
