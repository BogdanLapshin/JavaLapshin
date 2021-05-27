/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.lapshin.lapshinproject;

import org.obrii.mit.dp2021.lapshin.user.User;
import org.obrii.mit.dp2021.lapshin.user.UserInterface;
import org.obrii.mit.dp2021.lapshin.house.HouseDisplay;
import org.obrii.mit.dp2021.lapshin.house.HouseDisplayInterface;
import org.obrii.mit.dp2021.lapshin.display.DisplayInterface;
import org.obrii.mit.dp2021.lapshin.display.BuilderDisplay;
import org.obrii.mit.dp2021.lapshin.display.ChildDisplayNew1;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NEVM PC
 */
@WebServlet(name = "NewServlet", urlPatterns = {"/form"})
public class Form extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        request.getRequestDispatcher("pages/form.jsp").forward(request, response);

}
    
    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
    
    UserInterface user = createUser(request.getParameter("name"));
    
    DisplayInterface display;
    
    if(request.getParameter("interface").equals("old")){
       if (request.getParameter("message").equals("parent")){
               display = new InvestorDisplay(user);
       }
       else{
           display = new BuilderDisplay(user);
       }
       
    }
    else{
         if (request.getParameter("message").equals("parent")){
               display = new ChildDisplayNew1(user);
       }
       else{
           display = new HouseDisplay(user);
       }
        
        
    }
    
    List<String> messages = createMassages(display);
    request.setAttribute("messages",messages);
    request.getRequestDispatcher("pages/submit.jsp").forward(request, response);

    
    //User user = new User(
    //request.getParameter("name"),
    //request.getParameter("gender"),
    //request.getParameterValues("language"),
    //request.getParameter("country")
    //);
    //Display display = new Display();
    
    //System.out.print(display.showDisplay(user));
    
    
    
    
        //request.setAttribute("user", user);
        //request.getRequestDispatcher("pages/submit.jsp").forward(request, response);

}
   
 



    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public UserInterface createUser(String name){
    try{
        int userNumber = Integer.parseInt(name);
        return new User(userNumber);
       }catch (NumberFormatException e){
           return new User(name);
       }
    
    }

    public List<String> createMassages(DisplayInterface display){
    
    List<String> result = new ArrayList();
    result.add(display.showMessage());
    
    if(display instanceof HouseDisplayInterface){
    result.add(((HouseDisplayInterface)display).showAnotherMessage());
    }
    return result;
    
    }



@Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
