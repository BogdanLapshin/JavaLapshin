
package org.obrii.mit.dp2021.lapshin.dp2021project;
import Services.*;
import java.util.ArrayList;
import java.util.List;

public class Offer extends User {
    
    private String Name;
    private String Number;
    private String Mail;
    private String Service;
    private String Message;

    public Offer() {
    }

    

    public Offer(String name, String number, String mail, String service, String message) {
        Name = name;
        Number = number;
        Mail = mail;
        Service = service;
        Message = message;
        
    }

    public String getName() {
        return Name;
    }

    public String getNumber() {
        return Number;
    }

    public String getMail() {
        return Mail;
    }
    public String getService() {
        return Service;
    }
    public String getMessage() {
        return Message;
    }


 

    @Override
    public List<Services> getServices() {
        List<Services> services= new ArrayList<>();

        services.add(new Ecommerse());
        services.add(new OnlineService());
        services.add(new OnlineStore());
        
        return services;
    }
}
 

