/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ch.hearc.ig.odi.customeraccount.bean;

import ch.hearc.ig.odi.customeraccount.business.Customer;
import ch.hearc.ig.odi.customeraccount.services.Services;
import java.io.Serializable;
import java.util.List;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;
import javax.inject.Inject;

/**
 *
 * @author Romain
 */
@Named(value = "CustomerDetailBean")
@SessionScoped
public class CustomerDetailBean  implements Serializable {

    @Inject
    Services services;

    private List accounts = null;
    private Customer customer;
    private int number;
    private String firstname = null;
    private String lastname = null;

    public CustomerDetailBean() {
    }

    public List getAccounts() {
        return accounts;
    }

    public void setAccounts(List accounts) {
        this.accounts = accounts;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }


    public String detailAction(int customerID) {
        String string = "failure"; // Chaine de retour
        if (services.getCustomer(customerID) != null) {
            string = "success";
            this.accounts = services.getCustomer(customerID).getAccounts();
            this.firstname = services.getCustomer(customerID).getFirstName();
            this.lastname = services.getCustomer(customerID).getLastName();
            this.number = customerID;
        }
        return string;
    }

}
