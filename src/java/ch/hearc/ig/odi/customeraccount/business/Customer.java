package ch.hearc.ig.odi.customeraccount.business;

import java.util.*;

public class Customer {

    private List<Account> accounts;
    private int number;
    private String firstName;
    private String lastName;

    /**
     *
     * @param number
     * @param firstName
     * @param lastName
     */
    public Customer(int number, String firstName, String lastName) {
        this.number = number;
        this.firstName = firstName;
        this.lastName = lastName;
        this.accounts = new ArrayList<Account>();
    }

    /**
     *
     * @param number
     * @return 
     */
    public Account getAccountByNumber(String number) {
        Account returnedAccount = null;
        for (Account e : accounts) {
 
            if (e.getNumber().equals(number)) {
                returnedAccount = e;
                break;

            }
        }
        return returnedAccount;
    }

    /**
     *
     * @param number
     * @param name
     * @param rate
     */
    public void addAccount(final Account account){
        accounts.add(account);
    }
    
    public void addAccount(String number, String name, double rate) {
        Account account = new Account(number,name,rate,null);
        accounts.add(account);
    }

    public int getNumber() {
        return this.number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public List<Account> getAccounts() {
        return accounts;
    }

    public void setAccounts(final List<Account> accounts) {
        this.accounts = accounts;
    }

}
