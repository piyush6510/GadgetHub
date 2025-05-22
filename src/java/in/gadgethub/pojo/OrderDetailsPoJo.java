/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.gadgethub.pojo;

import java.io.InputStream;
import java.sql.Date;

/**
 *
 * @author PIYUSH PATIL
 */
public class OrderDetailsPoJo {
    private String orderId;
    private String prodId;
    private String prodName;
    private int quantity;
    private double ammount;
    private int shopped;
    private Date time;
    private InputStream prodImage;

    public OrderDetailsPoJo() {
    }

    public OrderDetailsPoJo(String orderId, String prodId, String prodName, int quantity, double ammount, int shopped, Date time, InputStream prodImage) {
        this.orderId = orderId;
        this.prodId = prodId;
        this.prodName = prodName;
        this.quantity = quantity;
        this.ammount = ammount;
        this.shopped = shopped;
        this.time = time;
        this.prodImage = prodImage;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getProdId() {
        return prodId;
    }

    public void setProdId(String prodId) {
        this.prodId = prodId;
    }

    public String getProdName() {
        return prodName;
    }

    public void setProdName(String prodName) {
        this.prodName = prodName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getAmmount() {
        return ammount;
    }

    public void setAmmount(double ammount) {
        this.ammount = ammount;
    }

    public int getShopped() {
        return shopped;
    }

    public void setShopped(int shopped) {
        this.shopped = shopped;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public InputStream getProdImage() {
        return prodImage;
    }

    public void setProdImage(InputStream prodImage) {
        this.prodImage = prodImage;
    }
    
}
