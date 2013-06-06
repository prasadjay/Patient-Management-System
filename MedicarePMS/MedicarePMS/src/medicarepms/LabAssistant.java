/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package medicarepms;

/**
 *
 * @author Abc
 */
public class LabAssistant extends Staff {

    private String lid;

    public LabAssistant(String fname, String lname, String address, String password, String sid, String nic, String lid) {
        super(fname, lname, address, password, sid, nic);
        this.lid = lid;
    }
}
