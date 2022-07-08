/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package milktea.tea;

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
public class TeaDAO {

    private static final String LIST_TEA = "SELECT productID,name,price,quantity,categoryID,productIMG,description FROM tblProduct";
    private static final String GET_BY_CID = "SELECT productID,name,price,quantity,categoryID,productIMG,description FROM tblProduct WHERE categoryID=?";
    private static final String GET_BY_PID = "SELECT productID,name,price,quantity,categoryID,productIMG,description FROM tblProduct WHERE productID=?";
    private static final String GET_BY_SS = "SELECT productID,name,price,quantity,categoryID,productIMG,description FROM tblProduct prod WHERE [name] LIKE ?";
    private static final String GET_PRODUCT_QUANTITY = "SELECT quantity FROM tblProduct WHERE productID=?";

    private static final String ADD = "INSERT INTO tblProduct(productID, name, price, quantity, categoryID, productIMG, description) VALUES (?,?,?,?,?,?,?)";
    private static final String DELETE = "DELETE FROM tblProduct WHERE productID=?";
    private static final String UPDATE = "UPDATE tblProduct SET name=?, price=?, quantity=?, categoryID=?, productIMG=?, description=? WHERE productID=?";
    private static final String UPDATE_QUANTITY = "UPDATE tblProduct SET quantity=? WHERE productID=?";

    public List<TeaDTO> getAllTea() throws SQLException {
        List<TeaDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUltils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LIST_TEA);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    list.add(new TeaDTO(rs.getString(1),
                            rs.getString(2),
                            rs.getInt(3),
                            rs.getInt(4),
                            rs.getInt(5),
                            rs.getString(6),
                            rs.getString(7)));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    public List<TeaDTO> getTeaByCID(String cid) throws SQLException {
        List<TeaDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUltils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_BY_CID);
                ptm.setString(1, cid);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    list.add(new TeaDTO(rs.getString(1),
                            rs.getString(2),
                            rs.getInt(3),
                            rs.getInt(4),
                            rs.getInt(5),
                            rs.getString(6),
                            rs.getString(7)));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    public TeaDTO getTeaByID(String productID) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUltils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_BY_PID);
                ptm.setString(1, productID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    return new TeaDTO(rs.getString(1),
                            rs.getString(2),
                            rs.getInt(3),
                            rs.getInt(4),
                            rs.getInt(5),
                            rs.getString(6),
                            rs.getString(7));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return null;
    }

    public List<TeaDTO> getTeaBySearchString(String searchString) throws SQLException {
        List<TeaDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUltils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_BY_SS);
                ptm.setString(1, "%" + searchString + "%");
                rs = ptm.executeQuery();
                while (rs.next()) {
                    list.add(new TeaDTO(rs.getString(1),
                            rs.getString(2),
                            rs.getInt(3),
                            rs.getInt(4),
                            rs.getInt(5),
                            rs.getString(6),
                            rs.getString(7)));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    public boolean create(TeaDTO tea) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUltils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(ADD);
                ptm.setString(1, tea.getProductID());
                ptm.setString(2, tea.getName());
                ptm.setInt(3, tea.getPrice());
                ptm.setInt(4, tea.getQuantity());
                ptm.setInt(5, tea.getCategoryID());
                ptm.setString(6, tea.getProductIMG());
                ptm.setString(7, tea.getDescription());
                check = ptm.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }

    public boolean delete(String productID) throws SQLException {
        boolean result = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUltils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(DELETE);
                ptm.setString(1, productID);
                result = ptm.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return result;
    }

    public boolean update(TeaDTO tea) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUltils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE);
                ptm.setString(1, tea.getName());
                ptm.setInt(2, tea.getPrice());
                ptm.setInt(3, tea.getQuantity());
                ptm.setInt(4, tea.getCategoryID());
                ptm.setString(5, tea.getProductIMG());
                ptm.setString(6, tea.getDescription());
                ptm.setString(7, tea.getProductID());
                check = ptm.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }

    public List<TeaDTO> checkQuantity(Cart cart) throws SQLException {
        List<TeaDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUltils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_PRODUCT_QUANTITY);
                for (TeaDTO tea : cart.getCart().values()) {
                    ptm.setString(1, tea.getProductID());
                    rs = ptm.executeQuery();
                    if (rs.next()) {
                        if (Integer.parseInt(rs.getString("quantity")) < tea.getQuantity()) {
                            //tea.setQuantity(Integer.parseInt(rs.getString("quantity")));
                            list.add(getTeaByID(tea.getProductID()));
                        }
                    }
                }

            }
        } catch (Exception e) {
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    public int getQuantity(String productID) throws SQLException {
        int quantity = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUltils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_PRODUCT_QUANTITY);
                ptm.setString(1, productID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    quantity = rs.getInt("quantity");
                }
            }
        } catch (Exception e) {
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return quantity;
    }

    public boolean updateQuantity(Cart cart) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        int quantity = 0;
        try {
            conn = DBUltils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE_QUANTITY);
                for (TeaDTO tea : cart.getCart().values()) {
                    quantity = getQuantity(tea.getProductID()) - tea.getQuantity();
                    ptm.setInt(1, quantity);
                    ptm.setString(2, tea.getProductID());
                    check = ptm.executeUpdate() > 0 ? true : false;
                    if (check == false) {
                        check = false;
                        break;
                    }
                }
            }
        } catch (Exception e) {
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }

    public static void main(String[] args) throws SQLException {
        TeaDAO dao = new TeaDAO();
        TeaDTO tea = new TeaDTO("T021", "nkkjhj", 69000, 999, 1, "ewqeqw", "dsadas");
        System.out.println(dao.create(tea));
    }
}
