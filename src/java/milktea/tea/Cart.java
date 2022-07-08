/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package milktea.tea;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Viktor-Nitro5
 */
public class Cart {
    
    private Map<String, TeaDTO> cart;

    public Cart() {
    }

    public Cart(Map<String, TeaDTO> cart) {
        this.cart = cart;
    }

    public Map<String, TeaDTO> getCart() {
        return cart;
    }

    public void setCart(Map<String, TeaDTO> cart) {
        this.cart = cart;
    }

    public boolean add(TeaDTO tea) {
        boolean check = false;
        if (this.cart == null) {
            this.cart = new HashMap<>();
        }
        if (this.cart.containsKey(tea.getProductID())) {
            int currentQuantity = this.cart.get(tea.getProductID()).getQuantity();
            tea.setQuantity(currentQuantity + tea.getQuantity());
        }
        this.cart.put(tea.getProductID(), tea);
        check = true;
        return check;
    }

    public boolean remmove(String id) {
        boolean check = false;
        if (this.cart.containsKey(id)) {
            this.cart.remove(id);
            check = true;
        }
        return check;
    }

    public boolean edit(String id, TeaDTO tea) {
        boolean check = false;
        if (this.cart != null) {
            if (this.cart.containsKey(id)) {
                this.cart.replace(id, tea);
                check = true;
            }
        }
        return false;
    }
    public double getTotal() {
        double total = 0;
        for (TeaDTO tea : cart.values()) {
            total += tea.getPrice() * tea.getQuantity();
        }
        return total;
    }
}
