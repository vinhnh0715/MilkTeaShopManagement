/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package milktea.tea;

/**
 *
 * @author Viktor-Nitro5
 */
public class TeaDTO {
    private String productID;
    private String name;
    private int price;
    private int quantity;
    private int categoryID;
    private String productIMG;
    private String description;

    public TeaDTO() {
        this.productID = "";
        this.name = "";
        this.price = 0;
        this.quantity = 0;
        this.categoryID = 0;
        this.productIMG = "";
        this.description = "";
    }

    public TeaDTO(String productID, String name, int price, int quantity, int categoryID, String productIMG, String description) {
        this.productID = productID;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.categoryID = categoryID;
        this.productIMG = productIMG;
        this.description = description;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getProductIMG() {
        return productIMG;
    }

    public void setProductIMG(String productIMG) {
        this.productIMG = productIMG;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "TeaDTO{" + "productID=" + productID + ", name=" + name + ", price=" + price + ", quantity=" + quantity + ", categoryID=" + categoryID + ", productIMG=" + productIMG + ", description=" + description + '}';
    }

}
