/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.gadgethub.pojo;

import java.sql.Date;

/**
 *
 * @author PIYUSH PATIL
 */
public class TransactionPojo {
    private String transactionId;
    private String userEmail;
    private Date transTime;
    private double ammount;

    public TransactionPojo() {
    }

    public TransactionPojo(String transactionId, String userEmail, Date transTime, double ammount) {
        this.transactionId = transactionId;
        this.userEmail = userEmail;
        this.transTime = transTime;
        this.ammount = ammount;
    }

    public String getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(String transactionId) {
        this.transactionId = transactionId;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public Date getTransTime() {
        return transTime;
    }

    public void setTransTime(Date transTime) {
        this.transTime = transTime;
    }

    public double getAmmount() {
        return ammount;
    }

    public void setAmmount(double ammount) {
        this.ammount = ammount;
    }

    @Override
    public String toString() {
        return "TransactionPojo{" + "transactionId=" + transactionId + ", userEmail=" + userEmail + ", transTime=" + transTime + ", ammount=" + ammount + '}';
    }
    
}
