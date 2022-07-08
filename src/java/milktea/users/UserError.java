/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package milktea.users;

/**
 *
 * @author Viktor-Nitro5
 */
public class UserError {
    private String userID;
    private String fullName;
    private String email;
    private String address;
    private String roleID;
    private String password;
    private String confirm;

    public UserError() {
        this.userID = "";
        this.fullName = "";
        this.email = "";
        this.address = "";
        this.roleID = "";
        this.password = "";
        this.confirm = "";
    }

    public UserError(String userID, String fullName, String email, String address, String roleID, String password, String confirm) {
        this.userID = userID;
        this.fullName = fullName;
        this.email = email;
        this.address = address;
        this.roleID = roleID;
        this.password = password;
        this.confirm = confirm;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRoleID() {
        return roleID;
    }

    public void setRoleID(String roleID) {
        this.roleID = roleID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirm() {
        return confirm;
    }

    public void setConfirm(String confirm) {
        this.confirm = confirm;
    }
    
    
}
