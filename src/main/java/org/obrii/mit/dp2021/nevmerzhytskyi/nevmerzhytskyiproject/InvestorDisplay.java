/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.nevmerzhytskyi.nevmerzhytskyiproject;

import org.obrii.mit.dp2021.nevmerzhytskyi.user.UserInterface;
import org.obrii.mit.dp2021.nevmerzhytskyi.display.Display;


public class InvestorDisplay extends Display{

    public InvestorDisplay(UserInterface userInterface) {
        super(userInterface);
    }

    

  
    @Override
    public String showMessage() {
        return "Our congratulations, "+getUserInterface().getName()+", we are happy to work with you, every investor is important to us!";
    }
}
//Our congratulations, we are happy to work with you. every investor is important to us