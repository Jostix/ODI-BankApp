/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ch.hearc.ig.odi.customeraccount.bean;

import ch.hearc.ig.odi.customeraccount.services.Services;
import java.io.Serializable;
import java.util.List;
import javax.enterprise.context.SessionScoped;
import javax.faces.bean.ManagedBean;
import javax.inject.Inject;

/**
 *
 * @author Romain Ducret <romain.ducret1@he-arc.ch>
 */
@ManagedBean(name = "CustomersBean")
@SessionScoped
public class CustomersBean implements Serializable {

    @Inject
    Services services;

    private List customers = null;

    public CustomersBean() {
    }

    public List getCustomers() {
        return services.getCustomersList();
  
    }
}
