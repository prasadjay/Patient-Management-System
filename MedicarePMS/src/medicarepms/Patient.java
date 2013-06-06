/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package medicarepms;


public class Patient {

    private String pid, name, alergy, med_details, renal_disease,note;
    private String gender;
    private int telephone, age;

    public Patient(String pid, String name, String gender, int telephone, int age) {
        this.age = age;
        this.pid = pid;
        this.name = name;
        this.gender = gender;
        this.telephone = telephone;
    }
}
