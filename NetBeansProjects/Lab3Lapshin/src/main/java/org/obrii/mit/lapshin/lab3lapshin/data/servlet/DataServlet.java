/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.lapshin.lab3lapshin.data.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.obrii.mit.lapshin.lab3lapshin.data.servlet.Data;
import org.obrii.mit.lapshin.lab3lapshin.data.servlet.UsersStore;
import org.obrii.mit.lapshin.lab3lapshin.data.servlet.FileName;

/**
 *
 * @author bogdanlapshin
 */

@WebServlet(name = "DataServlet", urlPatterns = {""})
public class DataServlet extends HttpServlet {

    UsersStore usersRefactorer = new UsersStore(FileName.getFileName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (FileName.getFileName().equals("")) {
            FileName.setFileName(this.getServletContext().getRealPath("") + "data.txt");
            usersRefactorer = new UsersStore(FileName.getFileName());
        }

        request.setAttribute("data", usersRefactorer.readDataList());
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        usersRefactorer.createDataList(new Data(
                Integer.parseInt(request.getParameter("id")),
                request.getParameter("name"),
                request.getParameter("number"),
                request.getParameter("city"),
                request.getParameter("mail")
                
        ));
        
        doGet(request, response);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int userId = Integer.parseInt(request.getParameter("id"));

        usersRefactorer.updateDataList(userId,
                new Data(
                Integer.parseInt(request.getParameter("id")),
                request.getParameter("name"),
                request.getParameter("number"),
                request.getParameter("city"),
                request.getParameter("mail")
                ));

        doGet(request, response);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int userId = Integer.parseInt(request.getParameter("id"));

        usersRefactorer.deleteDataList(userId);
        doGet(request, response);
    }

}
