package org.example;

public class BankAccount {
    public  long accountNumber;
    public String accountName;
    public double balance;

    public BankAccount(long accountNumber) {
        this.accountNumber = accountNumber;
    }
    public BankAccount(long accountNumber, String accountName, double balance) {
        this.accountNumber = accountNumber;
        this.accountName = accountName;
        this.balance = balance;
    }
    public BankAccount() {
    }
    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }
    public long getAccountNumber() {
        return accountNumber;
    }
    public void setAccountName(){
        this.accountName=accountName;
    }
    public String getAccountName() {
        return accountName;
    }
    public void setBalance(){
        this.balance=balance;
    }
    public double getBalance(){
        return balance;
    }
    public void showDetails(){
        System.out.println("Name is "+accountName+"Number is "+accountNumber
        +"Balance is "+balance);
    }
    public void getParentMethod(){
        System.out.println("This is parent class method");
    }
}
