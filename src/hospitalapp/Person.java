/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospitalapp;

import java.util.ArrayList;

/**
 *
 * @author patri
 */
public abstract class Person {
    
    static ArrayList<Person> persons=new ArrayList<>();
    
    /*
    doctors id range[1;200]
    patients id range is >200
    the id define what informations the informations this person is allowed to see
    */
    private int id;
    private String name;
    private String familyName;
    
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getFamilyName() {
        return familyName;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setFamilyName(String familyName) {
        this.familyName = familyName;
    }
    
    abstract void viewAppointments();
    abstract void viewOperationInfo();

  }
