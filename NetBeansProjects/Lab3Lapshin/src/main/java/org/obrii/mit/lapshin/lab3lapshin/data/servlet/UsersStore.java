package org.obrii.mit.lapshin.lab3lapshin.data.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import org.obrii.mit.lapshin.lab3lapshin.data.servlet.DataCrudInterface;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.obrii.mit.lapshin.lab3lapshin.data.servlet.Data;

import org.obrii.mit.lapshin.lab3lapshin.storeHouse.Store;

public class UsersStore implements DataCrudInterface {

    private List<Data> dataList = Store.getUsersStorage();

    private File file;

    public UsersStore() {
    }

    public UsersStore(String fileName) {
        this.file = new File(fileName);
    }

    public File getFile() {
        return file;
    }

    public void setFile(File file) {
        this.file = file;
    }

    @Override
    public void createDataList(Data data) {
        List<Data> dataList = this.readDataList();
        data.setId(dataList.size());
        dataList.add(data);
        this.writeDataList(dataList);
    }

    @Override
    public List<Data> readDataList() {

        try ( FileInputStream f = new FileInputStream(file);  ObjectInputStream o = new ObjectInputStream(f)) {
            List<Data> result = new ArrayList<>();

            while (f.available() > 0) {

                result.add((Data) o.readObject());

            }

            return result;

        } catch (FileNotFoundException ex) {
            Logger.getLogger(UsersStore.class.getName()).log(Level.SEVERE, null, ex);
            return new ArrayList<>();
        } catch (IOException ex) {
            Logger.getLogger(UsersStore.class.getName()).log(Level.SEVERE, null, ex);
            return new ArrayList<>();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UsersStore.class.getName()).log(Level.SEVERE, null, ex);
            return new ArrayList<>();
        }
    }

    @Override
    public void updateDataList(int id, Data data) {
        List<Data> newDataList = new ArrayList<>();
        data.setId(id);

        for (Data d : this.readDataList()) {
            if (d.getId() != id) {
                newDataList.add(d);
            } else {
                newDataList.add(data);
            }
        }

        this.writeDataList(newDataList);
    }

    @Override
    public void deleteDataList(int id) {
        List<Data> newDataList = new ArrayList<>();
        int i = 0;

        for (Data d : this.readDataList()) {
            if (d.getId() != id) {
                d.setId(i++);
                newDataList.add(d);
            }
        }

        this.writeDataList(newDataList);
    }

    @Override
    public void writeDataList(List<Data> data) {
        try ( FileOutputStream f = new FileOutputStream(file);  ObjectOutputStream o = new ObjectOutputStream(f)) {

            data.forEach(d -> {
                try {
                    o.writeObject(d);
                } catch (IOException ex) {
                    Logger.getLogger(UsersStore.class.getName()).log(Level.SEVERE, null, ex);
                }
            });

        } catch (FileNotFoundException ex) {
            Logger.getLogger(UsersStore.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(UsersStore.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

