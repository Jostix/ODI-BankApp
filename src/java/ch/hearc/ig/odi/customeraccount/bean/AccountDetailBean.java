/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ch.hearc.ig.odi.customeraccount.bean;

import ch.hearc.ig.odi.customeraccount.services.Services;
import java.io.Serializable;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;

/**
 *
 * @author Romain Ducret <romain.ducret1@he-arc.ch>
 */
@Named(value = "AccountDetailBean")
@SessionScoped
public class AccountDetailBean implements Serializable {

    @Inject
    Services services;

    private int customerId;
    private String number;
    private String name;
    private double balance = 0;
    private double rate = 0.001;

    public AccountDetailBean() {
    }

    public Services getServices() {
        return services;
    }

    public void setServices(Services services) {
        this.services = services;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public String detailAction(int customerID, String accountID) {
        String string = "failure"; // Chaine de retour

        if (services.getCustomer(customerID) != null && services.getCustomer(customerID).getAccountByNumber(accountID) != null) {
            string = "success";
            this.customerId = customerID;
            this.number = accountID;
            this.name = services.getCustomer(customerID).getAccountByNumber(accountID).getName();
            this.balance = services.getCustomer(customerID).getAccountByNumber(accountID).getBalance();
            this.rate = services.getCustomer(customerID).getAccountByNumber(accountID).getRate();
        }
        return string;
    }

}
