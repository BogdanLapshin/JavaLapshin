/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.lapshin.lab3lapshin.storeHouse;

import java.util.ArrayList;
import java.util.List;
import org.obrii.mit.lapshin.lab3lapshin.data.servlet.Data;

/**
 *
 * @author gxufh
 */
public class Store {

    private static Store usersStorage = new Store();
    private static List<Data> dataList;

    private Store() {
        dataList = new ArrayList<>();
        dataList.add(new Data(0, "Bogdan","380687913760","Kiev","mail@.com"));
    }

    public static Store getStore() {
        return usersStorage;
    }

    public static List<Data> getUsersStorage() {
        return dataList;
    }
}
