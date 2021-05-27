package org.obrii.mit.dp2021.lapshin.lapshinproject;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.obrii.mit.dp2021.lapshin.data.Data;
import org.obrii.mit.dp2021.lapshin.files.Config;
import org.obrii.mit.dp2021.lapshin.files.FilesCrud;
import org.obrii.mit.dp2021.lapshin.storehouse.DataCrudInterface;





@WebServlet(name = "DataServlet", urlPatterns = {"/Data"})
public class DataServlet extends HttpServlet {
    DataCrudInterface dataCrud = new FilesCrud(new File(Config.getFileName()));
    String  formType1 = "update"; 
    
    
    
    
    
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
                System.out.println(request.getParameter("search"));
                if (Config.getFileName().equals("")) {
            Config.setFileName(this.getServletContext().getRealPath("") + "data.txt");
            dataCrud = new FilesCrud(new File(Config.getFileName()));
        }
                
                if(request.getParameter("search")!=null){
                request.setAttribute("data", dataCrud.searchData(request.getParameter("search")));
                }
                else{
                request.setAttribute("data", dataCrud.readData());
                }
                request.getRequestDispatcher("home.jsp").forward(request, response); 
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
                formType1="create";
                dataCrud.createData(
                new Data(Integer.parseInt(request.getParameter("id")),request.getParameter("name"),Integer.parseInt(request.getParameter("age"))));
                doGet(request, response);
            }

      @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                int myId = Integer.parseInt(request.getParameter("id"));
                formType1="update";
                dataCrud.updateData(myId,new Data(Integer.parseInt(request.getParameter("id")),request.getParameter("name"),Integer.parseInt(request.getParameter("age"))));
                doGet(request, response);
    }
      @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                int myId = Integer.parseInt(request.getParameter("id"));
                dataCrud.deleteData(myId);
                dataCrud.streamliningData();
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