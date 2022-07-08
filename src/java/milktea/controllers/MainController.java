/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package milktea.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Viktor-Nitro5
 */
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {
    //Error
    private static final String ERROR = "error.jsp";
    //Login - Logout
    private static final String LOGIN="Login";
    private static final String LOGIN_CONTROLLER="LoginController";
    private static final String LOGOUT="Logout";
    private static final String LOGOUT_CONTROLLER="LogoutController";
    private static final String CREATE = "Create";
    private static final String CREATE_CONTROLLER = "CreateController";
    //Load Product + Search
    private static final String PRODUCT="Product";
    private static final String PRODUCT_CONTROLLER="ProductController";
    private static final String CATEGORY="Category";
    private static final String CATEGORY_CONTROLLER="CategoryController";
    private static final String SEARCH="Search";
    private static final String SEARCH_CONTROLLER="SearchController";
    //Manage Users : Delete + Update
    private static final String MANAGE_USERS="ManageUsers";
    private static final String MANAGE_USERS_CONTROLLER="ManageUsersController";
    private static final String DELETE_USER="DeleteUser";
    private static final String DELETE_USER_CONTROLLER="DeleteUserController";
    private static final String EDIT_USER="EditUser";
    private static final String EDIT_USER_CONTROLLER="EditUserController";
    //Manage Users : Delete + Update
    private static final String MANAGE_PRODUCTS="ManageProducts";
    private static final String MANAGE_PRODUCTS_CONTROLLER="ManageProductsController";
    private static final String DELETE_PRODUCT="DeleteProduct";
    private static final String DELETE_PRODUCT_CONTROLLER="DeleteProductController";
    private static final String EDIT_PRODUCT="EditProduct";
    private static final String EDIT_PRODUCT_CONTROLLER="EditProductController";
    private static final String ADD_PRODUCT="AddProduct";
    private static final String ADD_PRODUCT_CONTROLLER="AddProductController";
    //Manage Cart : Delete + Update + Checkout (WiP)
    private static final String CART="Cart";
    private static final String CART_CONTROLLER="CartController";
    private static final String CART_REMOVE = "Remove";
    private static final String CART_REMOVE_CONTROLLER = "CartRemoveController";
    private static final String CART_EDIT = "Edit";
    private static final String CART_EDIT_CONTROLLER = "CartEditController";
    private static final String CHECKOUT = "Checkout";
    private static final String CHECKOUT_CONTROLLER = "CheckoutController";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String action = request.getParameter("action");
            if (LOGIN.equals(action)) {
                url = LOGIN_CONTROLLER;
            } else if (LOGOUT.equals(action)) {
                url = LOGOUT_CONTROLLER;
            } else if (CREATE.equals(action)) {
                url = CREATE_CONTROLLER;
            } else if (PRODUCT.equals(action)) {
                url = PRODUCT_CONTROLLER;
            } else if (CATEGORY.equals(action)) {
                url = CATEGORY_CONTROLLER;
            } else if (SEARCH.equals(action)) {
                url = SEARCH_CONTROLLER;
            } else if (MANAGE_USERS.equals(action)) {
                url = MANAGE_USERS_CONTROLLER;
            } else if (DELETE_USER.equals(action)) {
                url = DELETE_USER_CONTROLLER;
            } else if (EDIT_USER.equals(action)) {
                url = EDIT_USER_CONTROLLER;
            } else if (MANAGE_PRODUCTS.equals(action)) {
                url = MANAGE_PRODUCTS_CONTROLLER;
            } else if (DELETE_PRODUCT.equals(action)) {
                url = DELETE_PRODUCT_CONTROLLER;
            }  else if (EDIT_PRODUCT.equals(action)) {
                url = EDIT_PRODUCT_CONTROLLER;
            }  else if (ADD_PRODUCT.equals(action)) {
                url = ADD_PRODUCT_CONTROLLER;
            }  else if (CART.equals(action)) {
                url = CART_CONTROLLER;
            } else if (CART_REMOVE.equals(action)) {
                url = CART_REMOVE_CONTROLLER;
            } else if (CART_EDIT.equals(action)) {
                url = CART_EDIT_CONTROLLER;
            } else if (CHECKOUT.equals(action)) {
                url = CHECKOUT_CONTROLLER;
            }
        } catch (Exception e) {
            log("Error at MainController: " + e.toString());
        } finally {
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
