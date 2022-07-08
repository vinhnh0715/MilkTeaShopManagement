
import java.sql.SQLException;
import milktea.users.UserDAO;
import milktea.users.UserDTO;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Viktor-Nitro5
 */
public class NewClass {
    public static void main(String[] args) throws SQLException {
        String userID="admin";
        String password="admin";
        UserDAO dao = new UserDAO();
        UserDTO loginUser = dao.checkLogin(userID, password);
        System.out.println(loginUser.getUserID());
        System.out.println(loginUser.getPassword());
        System.out.println(loginUser.getRoleID());
        System.out.println(loginUser.getFullName());
        System.out.println(loginUser.getEmail());
        System.out.println(loginUser.getAddress());
    }
}
