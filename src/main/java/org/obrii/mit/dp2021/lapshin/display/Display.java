/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.lapshin.display;

import org.obrii.mit.dp2021.lapshin.user.UserInterface;

/**
 *
 * @author NEVM PC
 */
public class Display implements DisplayInterface{

    private UserInterface userInterface;
    
    
    
    
    public Display(UserInterface userInterface) {
        this.userInterface = userInterface;
    }
    
    //public String showDisplay(UserInterface userinterface){
    //    return userinterface.getName();
    //}

    
    public String show(){
    
    return "heloo";
    }
    
    public UserInterface getUserInterface(){
    return userInterface;
    }
    public void setUserInterface(UserInterface userInterface){
        this.userInterface = userInterface;
        
    }
    
    
    

   
    @Override
    public String showMessage() {
      
        return "Our congratulations, "+userInterface.getName() +", we are happy to work with you, every builder is part of our family!";
    }

   

  

   

    
    

    
    

}
