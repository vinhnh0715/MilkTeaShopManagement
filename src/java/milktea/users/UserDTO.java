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
public class UserDTO {
    private String userID;
    private String fullName;
    private String email;
    private String address;
    private String roleID;
    private String password;

    public UserDTO() {
        this.userID = "";
        this.fullName = "";
        this.email = "";
        this.address = "";
        this.roleID = "";
        this.password = "";
    }

    public UserDTO(String userID, String name, String email, String address, String roleID, String password) {
        this.userID = userID;
        this.fullName = name;
        this.email = email;
        this.address = address;
        this.roleID = roleID;
        this.password = password;
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

    @Override
    public String toString() {
        return "UserDTO{" + "userID=" + userID + ", fullName=" + fullName + ", email=" + email + ", address=" + address + ", roleID=" + roleID + ", password=" + password + '}';
    }

    
}
