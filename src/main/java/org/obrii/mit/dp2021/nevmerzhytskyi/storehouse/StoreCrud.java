///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package org.obrii.mit.dp2021.nevmerzhytskyi.storehouse;
//
//import java.io.File;
//import java.io.FileInputStream;
//import java.io.FileNotFoundException;
//import java.io.FileOutputStream;
//import java.io.IOException;
//import java.io.ObjectInputStream;
//import java.io.ObjectOutputStream;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//import org.obrii.mit.dp2021.nevmerzhytskyi.data.Data;
//import org.obrii.mit.dp2021.nevmerzhytskyi.files.Config;
//import org.obrii.mit.dp2021.nevmerzhytskyi.files.CrudDataInterface;
//import org.obrii.mit.dp2021.nevmerzhytskyi.files.FilesCrud;
//
///**
// *
// * @author NEVM PC
// */
//public class StoreCrud  {
//       
//      
//    
//       
//        private File file;
//private List<Data> dataList = Store.getStore();
//        //dataList = file.readData();
//    public StoreCrud() {//
//    }
//
//    public StoreCrud(File file) {//
//        this.file = file;
//    }
//       
//       
//       
//       public void createData(Data data){
//       data.setId(dataList.size());
//       dataList.add(data);
//       
//       // List<Data> dataList = this.readData();
//       // dataList.add(data);
//       // this.writeData(dataList);
//       
//       
//       
//       
//       
//       
//       } 
//       public List<Data> readData(){
//       return   dataList;
//       
//       //    try ( FileInputStream f = new FileInputStream(file);  ObjectInputStream o = new ObjectInputStream(f)) {
//       //     List<Data> result = new ArrayList<>();
//      //      while (f.available() > 0) {
//      //         result.add((Data) o.readObject());
//      //      }
//
//       //     return result;
////
//      //  } catch (FileNotFoundException ex) {
//      //      Logger.getLogger(FilesCrud.class.getName()).log(Level.SEVERE, null, ex);
//      //      return null;
//      //  } catch (IOException | ClassNotFoundException ex) {
//      //      Logger.getLogger(FilesCrud.class.getName()).log(Level.SEVERE, null, ex);
//      //     return null;
//      //  }
//       }
//       public void updateData(int id,Data data){
//           dataList.set(id, data);
//      //  List<Data> newData = new ArrayList<>();
//       // data.setId(id);
//       // for (Data d : this.readData()) {
//      //      if (d.getId() != id) {
//      //          newData.add(d);
//     //       } else{ newData.add(data); }
//      //  }
//       // this.writeData(newData);
//       
//       }
//       public void deleteData(int id){
//           
//          dataList.remove(id);
//        
//        // List<Data> newData = new ArrayList<>();
//       // for (Data d : this.readData()) {
//       //     if (d.getId() != id) {
//       //         newData.add(d);
//       //     }
//      //  }
//      //  this.writeData(newData);
//       
//       }
//          
/////////////////////////////
//        public void writeData(List<Data> data) {
//
//     //   try ( FileOutputStream f = new FileOutputStream(file);  ObjectOutputStream o = new ObjectOutputStream(f)) {
//
//     //       data.forEach(d -> {
//      //          try {
//      //              o.writeObject(d);
//      //          } catch (IOException ex) {
//      //              Logger.getLogger(FilesCrud.class.getName()).log(Level.SEVERE, null, ex);
//      //         }
//      //      });
//
//      //  } catch (FileNotFoundException ex) {
//      //      Logger.getLogger(FilesCrud.class.getName()).log(Level.SEVERE, null, ex);
//      //  } catch (IOException ex) {
//      //      Logger.getLogger(FilesCrud.class.getName()).log(Level.SEVERE, null, ex);
//      //  }
//
//    }
//
//   // @Override
//   // public List<Data> readData() {
//
//        
//
//   // }
//
//   // @Override
//   // public void createData(Data addingData) {
//      
//
//    //}
//
//   // @Override
//   // public void deleteData(int id) {        
//        
//   // }
//    
//   // @Override
//   // public void updateData(int id, Data data) {        
//        
//   // }
//
//    public File getFile() {
//        return file;
//    }
//
//    public void setFileName(File file) {
//        this.file = file;
//    }
//
//   
//
//
//
//
//
//
//}
//
