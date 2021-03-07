/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.lapshin.lab3lapshin.data.servlet;

/**
 *
 * @author bogdanlapshin
 */
import java.io.Serializable;

public class Data implements Serializable {
    private int id;
    private String name;
    private String number;
    private String city;
    private String mail;
    
    
    public Data() {
    }
    
    public Data(int id, String name, String number, String city, String mail) {
        this.id = id;
        this.name = name;
        this.number = number;
        this.city = city;
        this.mail = mail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }
    
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String Mail) {
        this.mail = mail;
    }

    
    @Override
    public String toString() {
        return "Data{" + "id=" + id + ", name=" + name + ", number=" + number + ", city=" + city + ", mail=" + mail + '}';
    }
}

