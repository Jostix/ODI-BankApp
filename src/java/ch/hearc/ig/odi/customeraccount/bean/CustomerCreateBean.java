/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ch.hearc.ig.odi.customeraccount.bean;

import ch.hearc.ig.odi.customeraccount.services.Services;
import javax.faces.bean.ManagedBean;
import javax.inject.Inject;

/**
 *
 * @author Romain Ducret <romain.ducret1@he-arc.ch>
 */
@ManagedBean(name = "CustomerCreateBean")
public class CustomerCreateBean {

    @Inject
    Services services;

    private int number;
    private String firstname;
    private String lastname;

    public CustomerCreateBean() {
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(final int number) {
        this.number = number;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(final String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(final String lastname) {
        this.lastname = lastname;
    }

    public String createCustomer() {
        String string;
        string = "failure";
        services.saveCustomer(number, firstname, lastname);

        if (services.getCustomer(number).getNumber() == number) {
            string = "success";
        }
        return string;
    }
}
