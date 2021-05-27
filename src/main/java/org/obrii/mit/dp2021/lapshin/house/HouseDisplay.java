/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.lapshin.house;

import org.obrii.mit.dp2021.lapshin.user.UserInterface;

/**
 *
 * @author NEVM PC
 */
public class HouseDisplay extends HouseAbstractDisplay{

    public HouseDisplay(UserInterface userInterface) {
        super(userInterface);
    }

    /*HouseDisplay(UserInterface user) {
    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }*/

   
  

    @Override
    public String showAnotherMessage() {
        return "Please, " + getUserInterface().getName()+", call 0983314491, the administrator will solve the housing problem!";
    }
    //also greetings from the daughter class
}
