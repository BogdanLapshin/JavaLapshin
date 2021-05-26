///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package org.obrii.mit.dp2021.nevmerzhytskyi.storehouse;
//
//import java.io.BufferedReader;
//import java.io.BufferedWriter;
//import java.io.File;
//import java.io.FileReader;
//import java.io.FileWriter;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.ListIterator;
//import org.obrii.mit.dp2021.nevmerzhytskyi.data.Data;
//import org.obrii.mit.dp2021.nevmerzhytskyi.files.Config;
//import org.obrii.mit.dp2021.nevmerzhytskyi.files.CrudDataInterface;
//import org.obrii.mit.dp2021.nevmerzhytskyi.files.FilesCrud;
//
///**
// *
// * @author NEVM PC
// */
//public class Store {
//    private static Store storeInstance = new Store();
//    private static List<Data> dataStore;
//    
//    private Store(){
//       // CrudDataInterface crud = new FilesCrud(new File(Config.FILE_NAME));
//        dataStore = new ArrayList<>();
//       // dataStore = crud.readData();
//       // dataStore.add(new Data(0,"sasa",18));
//       // dataStore.add(new Data(0,"sasa1",19));
//          System.out.println("=====Files operations======");
//        
//        
//        
//        
//        
//        
//        //crud.createData(new Data(4, "Olha", 24));
//       // System.out.println(crud.readData());
//       // crud.updateData(3, new Data(4, "Ann", 23));
//       // crud.deleteData(2);
//        //List<Data> ld2 = new ArrayList<>();
//        //ld2 = crud.readData();
//        //System.out.println("ni"+ld2);
//    
//        
//        
//  
//    }
//    
//    
//    
//    
//    public static Store getInstance(){
//        return storeInstance;
//    }
// 
//    public static List<Data> getStore(){
//        return dataStore;
//    }
//}
