/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package milktea.users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import milktea.ultils.DBUltils;

/**
 *
 * @author Viktor-Nitro5
 */
public class UserDAO {
    
    private static final String LOGIN="SELECT fullName,email,address,roleID FROM tblUsers WHERE userID=? AND password=?";
    private static final String LOGINWITHEMAIL="SELECT userID,fullName,address,roleID FROM tblUsers WHERE email=?";
    private static final String DUPLICATE="SELECT userID FROM tblUsers WHERE userID=?";
    private static final String CREATE="INSERT INTO tblUsers(userID,fullName,email,address,roleID,password) VALUES (?,?,?,?,?,?)";
    private static final String SEARCH="SELECT userID,fullName,email,address,roleID FROM tblUsers";
    private static final String DELETE="DELETE FROM tblUsers WHERE userID=?";
    private static final String UPDATE="UPDATE tblUsers SET fullName=?,email=?,address=? WHERE userID=?";
    public UserDTO checkLogin(String userID, String password) throws SQLException{
        UserDTO user=null;
        Connection conn=null;
        PreparedStatement ptm =null;
        ResultSet rs= null;
        try{
            conn=DBUltils.getConnection();
            if(conn!=null){
                ptm=conn.prepareStatement(LOGIN);
                ptm.setString(1, userID);
                ptm.setString(2, password);
                rs= ptm.executeQuery();
                if(rs.next()){
                    String fullName=rs.getString("fullName");
                    String email=rs.getString("email");
                    String address=rs.getString("address");
                    String roleID=rs.getString("roleID");
                    user=new UserDTO(userID, fullName,email , address, roleID, "");
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(rs!=null) rs.close();
            if(ptm!=null) ptm.close();
            if(conn!=null) conn.close();
        }
        return user;
    }
    public UserDTO checkLoginWithEmail(String email) throws SQLException{
        UserDTO user=null;
        Connection conn=null;
        PreparedStatement ptm =null;
        ResultSet rs= null;
        try{
            conn=DBUltils.getConnection();
            if(conn!=null){
                ptm=conn.prepareStatement(LOGINWITHEMAIL);
                ptm.setString(1, email);
                rs= ptm.executeQuery();
                if(rs.next()){
                    String userID=rs.getString("userID");
                    String fullName=rs.getString("fullName");
                    String address=rs.getString("address");
                    String roleID=rs.getString("roleID");
                    user=new UserDTO(userID, fullName,email , address, roleID, "");
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(rs!=null) rs.close();
            if(ptm!=null) ptm.close();
            if(conn!=null) conn.close();
        }
        return user;
    }
    public boolean checkDuplicate(String userID) throws SQLException{
        boolean check = true;
        Connection conn=null;
        PreparedStatement ptm=null;
        ResultSet rs = null;
        try {
            conn=DBUltils.getConnection();
            if(conn!=null){
                ptm=conn.prepareStatement(DUPLICATE);
                ptm.setString(1, userID);
                rs=ptm.executeQuery();
                if(rs.next()){
                    check=false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(rs!=null) rs.close();
            if(ptm!=null) ptm.close();
            if(conn!=null) conn.close();
        }
        return check;
    }
    public boolean create(UserDTO user) throws SQLException{
        boolean check=false;
        Connection conn=null;
        PreparedStatement ptm=null;
        try {
            conn=DBUltils.getConnection();
            if(conn!=null){
                ptm=conn.prepareStatement(CREATE);
                ptm.setString(1, user.getUserID());
                ptm.setString(2, user.getFullName());
                ptm.setString(3, user.getEmail());
                ptm.setString(4, user.getAddress());
                ptm.setString(5, user.getRoleID());
                ptm.setString(6, user.getPassword());
                check=ptm.executeUpdate()>0? true:false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(ptm!=null) ptm.close();
            if(conn!=null) conn.close();
        }
        return check;
    }
    public List<UserDTO> getListUser() throws SQLException{
        List<UserDTO> list=new ArrayList<>();
        Connection conn=null;
        PreparedStatement ptm=null;
        ResultSet rs=null;
        try{
            conn=DBUltils.getConnection();
            if(conn!=null){
                ptm=conn.prepareStatement(SEARCH);
                rs=ptm.executeQuery();
                while(rs.next()){
                    list.add(new UserDTO(rs.getString(1), rs.getString(2),rs.getString(3) , rs.getString(4), rs.getString(5), "***")) ;
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(rs!=null) rs.close();
            if(ptm!=null) ptm.close();
            if(conn!=null) conn.close();
        }
        return list;
    }
    public boolean delete(String userID) throws SQLException{
        boolean result=false;
        Connection conn=null;
        PreparedStatement ptm=null;
        try{
            conn=DBUltils.getConnection();
            if(conn!=null){
                ptm=conn.prepareStatement(DELETE);
                ptm.setString(1, userID);
                result=ptm.executeUpdate()>0? true:false;
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(ptm!=null) ptm.close();
            if(conn!=null) conn.close();
        }
        return result;
    }
    public boolean update(UserDTO user) throws SQLException{
        boolean check = false;
        Connection conn=null;
        PreparedStatement ptm = null;
        try{
            conn=DBUltils.getConnection();
            if(conn!=null){
                ptm=conn.prepareStatement(UPDATE);
                ptm.setString(1, user.getFullName());
                ptm.setString(2, user.getEmail());
                ptm.setString(3, user.getAddress());
                ptm.setString(4, user.getUserID());
                check=ptm.executeUpdate()>0? true:false;
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(ptm!=null) ptm.close();
            if(conn!=null) conn.close();
        }
        return check;
    }
}
