/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.lapshin.user;
import java.util.Arrays;
import java.util.List;


public class User implements UserInterface{

    private String name;
  //  private String gender;
  //  private List<String> language;
  //  private String country;
    
    public User(){}

    /**
     * @return the name
     */

public User(String name){
    //, String gender, String [] language, String country
this.name = name;
//this.gender = gender;
//if(language != null) this.language = Arrays.asList(language);
//this.country = country;
}
public User(int number){
    //, String gender, String [] language, String country
this.name = "User"+number ;
//this.gender = gender;
//if(language != null) this.language = Arrays.asList(language);
//this.country = country;
}


    User(String parameter, String parameter0, String parameter1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    @Override
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

//public String getGender() {
//return gender;
//}
//  public void setGender(String gender) {
//this.gender = gender;
//}
//
//
//public String getCountry() {
//return country;
//}
//public void setCountry(String country) {
//this.country = country;
//} 
//
//public List<String> getLanguage( ) {
//    return language;
//}
//public void setLanguage(List<String> language) {
//    this.language = language;
//}

@Override

public String toString() {
return "User: "+"name="+name;
}

//+", gender="+gender + ", language=" +language+ ", country="+country + ""

    @Override
    public String show() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    

}
