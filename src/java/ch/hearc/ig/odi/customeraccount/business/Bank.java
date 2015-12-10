/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ch.hearc.ig.odi.customeraccount.business;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Julien Bron <julien.bron@he-arc.ch>
 */
public class Bank {

    int number;
    String name;
    Map<Integer, Customer> customers;
   // Map<String, Account> accounts;

    public Bank(final int number, final String name) {
        this.number = number;
        this.name = name;

        customers = new HashMap();
       // accounts = new HashMap();
    }

   /* public Account getAccountByNumber(final String number) {
        return accounts.get(number);
    }*/

    public Customer getCustomerByNumber(final int number) {
        return customers.get(number);
    }

    public Customer addCustomer(final int number, final String firstName, final String lastName) {
        Customer customer = new Customer(number, firstName, lastName);
        customers.put(number, customer);
        return customer;
    }

    public Account addAccount(final String number, final String name, final double rate, final Customer customer) {
        Account account = new Account(number, name, rate, customer);
        customer.addAccount(account);

        return account;
    }

    public Map getCustomers() {
        return customers;
    }

   /* public Map getAccounts() {
        return accounts;
    }*/
}
