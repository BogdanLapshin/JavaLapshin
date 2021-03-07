/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.lapshin.lab3lapshin.data.servlet;

import java.util.List;


/**
 *
 * @author bogdanlapshin
 */
public interface DataCrudInterface {
    
    List<Data> readDataList();
    void createDataList(Data data);
    void updateDataList(int id, Data data);
    void deleteDataList(int id);
    void writeDataList(List<Data> data);
}
