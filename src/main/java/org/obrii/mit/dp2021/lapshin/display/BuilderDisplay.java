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
public class BuilderDisplay extends Display{

    public BuilderDisplay(UserInterface userInterface) {
        super(userInterface);
    }

    

  
    @Override
    public String showMessage() {
        return "Our congratulations, "+getUserInterface().getName()+", we are happy to work with you, every builder is part of our family!";
    }
}
//Our congratulations, we are happy to work with you. every builder is part of our family