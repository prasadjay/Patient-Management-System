/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package medicarepms;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author PRASAD
 */
public class Doctor extends Staff {

    private String specialiaty;
    private String days;
    private String time;
    private String did;
    private int maxAppNo;
    
   private Dbconnect dbcon1;
    private Connection cname;

    public Doctor(String fname, String lname, String address, String password, String sid, String nic,
            String specialiaty, String days, String time, String did, int maxAppNo) 
    {
        super(fname, lname, address, password, sid, nic);
        this.did = did;
        this.days = days;
        this.maxAppNo = maxAppNo;
        this.specialiaty = specialiaty;
        this.time = time;
    }
        public Doctor()
        {
          super();  
        }

    
    public ResultSet getDetailsOfApatient(String query)
            {
                 dbcon1=new Dbconnect(); //databse connection object from Dbconnect class;
                cname=dbcon1.connect();//save the connection
                     ResultSet result= dbcon1.executeSQLQuery(query);
                    // dbcon1.closeConnection(cname); //close connection;
                     return result;
                     
            }
    public void closedbconnection()
    {
        dbcon1.closeConnection(cname);
    }
    
    //GETTERS
    
    public String getDoctorFname()
    {
        return this.getFnameFromStaff();
    }
    
    public String getDoctorLname()
    {
        return this.getLnameFromStaff();
    }
    
    public String getDoctorAddress()
    {
        return this.getAddressFromStaff();
    }
    
    public String getDoctorPassword()
    {
        return this.getPasswordFromStaff();
    }
    
    public String getDoctorStaffID()
    {
        return this.getStaffIDFromStaff();
    }
    
    public String getDoctorNIC()
    {
        return this.getNICFromStaff();
    }
    
    public String getDoctorID()
    {
        return this.did;
    }
    
    public String getDoctorDays()
    {
        return this.days;
    }
    
    public String getDoctorSpeciality()
    {
        return this.specialiaty;
    }
    
    public String getDoctorTime()
    {
        return this.time;
    }
    
    public String getDoctorMaxAppNo()
    {
        return Integer.toString(this.maxAppNo);
        
    }
    
    // DB methods
    
    public boolean addNewDoctor(String query)
    {    
        dbcon1=new Dbconnect(); //databse connection object from Dbconnect class;
                cname=dbcon1.connect();//save the connection
                
           int x = dbcon1.executeNonQuery(query);
           
           if(x>0)
               return true;
           else
               return false;
    }
}
    
