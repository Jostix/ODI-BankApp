/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ch.hearc.ig.odi.customeraccount.bean;

import ch.hearc.ig.odi.customeraccount.business.Customer;
import ch.hearc.ig.odi.customeraccount.services.Services;
import javax.faces.bean.ManagedBean;
import javax.inject.Inject;

/**
 *
 * @author Romain Ducret <romain.ducret1@he-arc.ch>
 */
@ManagedBean(name = "AccountCreateBean")
public class AccountCreateBean {

    @Inject
    Services services;

    private int customerId;
    private String number;
    private String name;
    private double balance = 0;
    private double rate = 0.001;


    public AccountCreateBean() {
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

    public String createAccount(final int customerID) {
        String string;
        string = "failure";
 
        Customer customer = services.getCustomer(customerID);
        customer.addAccount(number, name, rate);
            
        if (services.getCustomer(customerID).getAccountByNumber(number).getNumber().equals(number)) {
            string = "success";
        }
        return string;
    }
}
