/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package milktea.category;

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
public class CategoryDAO {
    private static final String LIST_CATEGORY="SELECT categoryID,name FROM tblCategory";
    
    public List<CategoryDTO> getAllCategory() throws SQLException{
        List<CategoryDTO> list=new ArrayList<>();
        Connection conn=null;
        PreparedStatement ptm =null;
        ResultSet rs= null;
        try {
            conn=DBUltils.getConnection();
            if(conn!=null){
                ptm=conn.prepareStatement(LIST_CATEGORY);
                rs= ptm.executeQuery();
                while(rs.next()){
                    list.add(new CategoryDTO(rs.getInt(1), rs.getString(2)));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(rs!=null) rs.close();
            if(ptm!=null) ptm.close();
            if(conn!=null) conn.close();
        }
        return list;
    }
    public static void main(String[] args) throws SQLException {
        CategoryDAO dao = new CategoryDAO();
        List<CategoryDTO> list=dao.getAllCategory();
        for (CategoryDTO o : list) {
            System.out.println(o);
        }
    }
}
