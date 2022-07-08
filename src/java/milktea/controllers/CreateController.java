/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package milktea.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import milktea.users.UserDAO;
import milktea.users.UserDTO;
import milktea.users.UserError;

/**
 *
 * @author Viktor-Nitro5
 */
@WebServlet(name = "CreateController", urlPatterns = {"/CreateController"})
public class CreateController extends HttpServlet {

    private static final String ERROR="registration.jsp";
    private static final String SUCCESS="login.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        UserError userError = new UserError();
        try {
            UserDAO dao=new UserDAO();
            String userID=request.getParameter("userID");
            String fullName=request.getParameter("fullName");
            String email=request.getParameter("email");
            String address=request.getParameter("address");
            String roleID=request.getParameter("roleID");
            String password=request.getParameter("password");
            String confirm=request.getParameter("confirm");
            boolean checkValidation =true;
            
            if(userID.length()>10 || userID.length()<3){
                userError.setUserID("Length must be in [3,10]");
                checkValidation=false;
            }
            boolean checkDuplicate=dao.checkDuplicate(userID);
            if(checkDuplicate==false){
                userError.setUserID("Duplicate userID");
                checkValidation=false;
            }
            if(fullName.length()>50 || userID.length()<2){
                userError.setFullName("Length must be in [2,50]");
                checkValidation=false;
            }
            if(!password.equals(confirm)){
                userError.setPassword("Password does not match!");
                checkValidation=false;
            }
            //Kiem tra data da validation xong het chua
            if(checkValidation==true){
                UserDTO user = new UserDTO(userID, fullName, email, address, roleID, password);
                boolean checkCreate=dao.create(user);
                if(checkCreate){
                    url=SUCCESS;
                }
            }else{
                request.setAttribute("USER_ERROR", userError);
            }
        } catch (Exception e) {
            log("Error at CreateController : "+e.toString());
        }finally{
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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
