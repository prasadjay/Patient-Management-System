/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package medicarepms;

/**
 *
 * @author Abc
 */
import java.sql.*;
import java.sql.Connection;
import javax.swing.JOptionPane;

public class Dbconnect {

    public static Connection con = null;

    public Connection connect() {
        String strHost="";
        String iPort="";
        String strDBName="";
        String strUserName="";
        String strPassword="";
        
        try {
            //loading mysql jdbc driver
            Class.forName("com.mysql.jdbc.Driver");
            //connection string
            String url = "jdbc:mysql://" + strHost + ":" + iPort + "/" + strDBName;
            //establishing connection
            con = DriverManager.getConnection(url, strUserName, strPassword);
            return con;
            //successfully connected
        } catch (Exception e) {
           JOptionPane.showMessageDialog(null, e.getMessage()+"\nPlease Try Again","Query Execution Failure", 1);
            return null;
        }



    }
    
    public  void closeConnection(Connection dbCon)
    {
        try
        {
            dbCon.close(); //close connection
        }
        catch(Exception e)
        {

        }
    }
     public static int executeNonQuery(String sqlString)
    {
        try
        {
            Statement stmt = con.createStatement();
            int rows=stmt.executeUpdate(sqlString); 
            return rows;//return the number of rows affected
        }
        catch(SQLException e)
        {
            //display error message
            JOptionPane.showMessageDialog(null,  e.getMessage()+"\nPlease Try Again","Non Query Execution Failure", 1);
            return -1;
        }
    }
     
      public static ResultSet executeSQLQuery(String sqlQuery)
    {
        try
        {
            Statement stmt = con.createStatement();
            ResultSet result= stmt.executeQuery(sqlQuery); //query successfully executed
            return result;
        }
        catch(SQLException e)
        {
            //display error message
            JOptionPane.showMessageDialog(null, e.getMessage()+"\nPlease Try Again","Query Execution Failure", 1);
            return null; //sql query execution failed
        }
    }
}
