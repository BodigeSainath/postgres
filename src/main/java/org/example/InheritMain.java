package org.example;

public class InheritMain {
    public static void main(String[] args) {
        CurrentAccount ac = new CurrentAccount();
        ac.getParentMethod();
        ac.getChildMethod();
        BankAccount bank =new BankAccount();
        bank.getParentMethod();
        System.out.println(bank.getClass());

    }
}
