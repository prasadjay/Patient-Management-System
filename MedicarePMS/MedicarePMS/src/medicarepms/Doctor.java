/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package medicarepms;

/**
 *
 * @author Abc
 */
public class Doctor extends Staff {

    private String specialiaty;
    private String days;
    private String time;
    private String did;
    private int maxAppNo;

    public Doctor(String fname, String lname, String address, String password, String sid, String nic,
            String specialiaty, String days, String time, String did, int maxAppNo) {
        super(fname, lname, address, password, sid, nic);
        this.did = did;
        this.days = days;
        this.maxAppNo = maxAppNo;
        this.specialiaty = specialiaty;
        this.time = time;
    }
}
