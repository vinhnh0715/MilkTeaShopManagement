/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package milktea.controllers;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import milktea.users.UserDAO;
import milktea.users.UserDTO;
import milktea.users.UserGoogleDTO;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;

/**
 *
 * @author Viktor-Nitro5
 */
@WebServlet(name = "LoginGoogleController", urlPatterns = {"/LoginGoogleController"})
public class LoginGoogleController extends HttpServlet {
    
    public static String GOOGLE_CLIENT_ID = "1029324976329-9fmdbfg55g2s2bk7s1sklb4qjqbpabgc.apps.googleusercontent.com";
    public static String GOOGLE_CLIENT_SECRET = "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";
    public static String GOOGLE_REDIRECT_URI = "http://localhost:8080/MilkTeaShopManagement/LoginGoogleController";
    public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
    public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
    public static String GOOGLE_GRANT_TYPE = "authorization_code";
    private static final String ERROR = "login.jsp";
    private static final String US = "US";
    private static final String USER_PAGE = "userPage.jsp";
    private static final String AD = "AD";
    private static final String ADMIN_PAGE = "adminPage.jsp";
    private static final String HOMEPAGE = "index.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String code = request.getParameter("code");
		String accessToken = getToken(code);
                UserGoogleDTO user = getUserInfo(accessToken);
		System.out.println(user);
                response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            UserDAO dao = new UserDAO();
            UserDTO loginUser = dao.checkLoginWithEmail(user.getEmail());
            //cho nay la xac thuc : kiem tra user da login hay chua
            if (loginUser != null) {
                //cho nay la phan quyen : quyen admin (AD) va user (US)
                HttpSession session = request.getSession();
                session.setAttribute("LOGIN_USER", loginUser);
                String roleID = loginUser.getRoleID();
                if (US.equals(roleID)) {
                    url = USER_PAGE;
                } else if (AD.equals(roleID)) {
                    url = ADMIN_PAGE;
                } else {
                    request.setAttribute("ERROR", "Your role is not supported!");
                }
            } else {
                request.setAttribute("ERROR", "Incorrect UserID or Password.");
            }
        } catch (Exception e) {
            log("Error at LoginController " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
	}

	public static String getToken(String code) throws ClientProtocolException, IOException {
		// call api to get token
		String response = Request.Post(GOOGLE_LINK_GET_TOKEN)
				.bodyForm(Form.form().add("client_id", GOOGLE_CLIENT_ID)
						.add("client_secret", GOOGLE_CLIENT_SECRET)
						.add("redirect_uri", GOOGLE_REDIRECT_URI).add("code", code)
						.add("grant_type", GOOGLE_GRANT_TYPE).build())
				.execute().returnContent().asString();

		JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
		String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
		return accessToken;
	}

	public static UserGoogleDTO getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
		String link = GOOGLE_LINK_GET_USER_INFO + accessToken;
		String response = Request.Get(link).execute().returnContent().asString();

		UserGoogleDTO googlePojo = new Gson().fromJson(response, UserGoogleDTO.class);

		return googlePojo;
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
