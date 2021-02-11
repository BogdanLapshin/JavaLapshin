package org.obrii.mit.dp2021.lapshin.dp2021project;

import java.util.Arrays;
import java.util.List;

public class User {
    
    
    
    private String name;
    private String surname;
    private String color;
    private List<String> functions;
    private String engine;
    
    public User() {
    }
    
    public User(String name, String surname, String color, String[] functions, String engine) {
        this.name = name;
        this.surname = surname;
        this.color = color;
        if (functions != null) this.functions = Arrays.asList(functions);
        this.engine = engine;
        
    }

   
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }
    
    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    
    public List<String> getFunctions() {
        return functions;
    }

    public void setFunctions(List<String> functions) {
        this.functions = functions;
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }
}