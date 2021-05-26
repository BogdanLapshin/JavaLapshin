/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.nevmerzhytskyi.nevmerzhytskyiproject;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.obrii.mit.dp2021.nevmerzhytskyi.data.Data;
import org.obrii.mit.dp2021.nevmerzhytskyi.files.Config;
import org.obrii.mit.dp2021.nevmerzhytskyi.files.FilesCrud;
import org.obrii.mit.dp2021.nevmerzhytskyi.storehouse.DataCrudInterface;

/**
 *
 * @author NEVM PC
 */
@WebServlet(name = "DinamicFormUpdate", urlPatterns = {"/DinamicFormUpdate"})
public class DinamicFormUpdate extends HttpServlet {
            //DataCrudInterface dataCrud = new FilesCrud(new File(Config.getFileName()));
       //   dataCrud.setFileName(new File("feef.txt"));
            //StoreCrud(File file)
          String  formType1 = "update";
            
    /**
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                HttpSession session  = request.getSession();
                session.setAttribute("formType1", formType1);
               // request.setAttribute("data", dataCrud.readData());
                request.getRequestDispatcher("dinamic_form.jsp").forward(request, response);
            }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                int myId = Integer.parseInt(request.getParameter("id"));
                formType1="update";
               // dataCrud.updateData(myId,new Data(Integer.parseInt(request.getParameter("id")),request.getParameter("name"),Integer.parseInt(request.getParameter("age"))));
                doGet(request, response);
            }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
