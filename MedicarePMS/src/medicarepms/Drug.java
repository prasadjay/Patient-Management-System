/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package medicarepms;

/**
 *
 * @author PRASAD
 */
public class Drug {
    
    private String drugName;
    private String drugID;
    private double cost;
    private int stock;
    private int reOrderLevel;
    
    public Drug(String dID, String dname, double cost, int stock, int reorder)
    {
        this.drugName = dname;
        this.drugID = dID;
        this.cost = cost;
        this.stock = stock;
        this.reOrderLevel = reorder;
    }
    
    //GETTERS
    
    public String getDrugName()
    {
        return this.drugName;
    }
    
    public String getDrugID()
    {
        return this.drugID;
    }
    
    public double getDrugCost()
    {
        return this.cost;
    }
    
    public int getDrugStock()
    {
        return this.stock;
    }
    
    public int getDrugReOrderLevel()
    {
        return this.reOrderLevel;
    }
    
    
}
