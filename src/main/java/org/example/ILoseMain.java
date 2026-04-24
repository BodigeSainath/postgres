package org.example;

import jdk.jshell.EvalException;

public class ILoseMain {
    public static void main(String[] args) {
        ILooseCoupleDemo obj;
        ILooseCoupleDemo value = getObject(1);
        value.display();
    }
        public  static  ILooseCoupleDemo getObject(int a){
        if(a == 1){
             return  new LoseDemo1();
        }
        else{
            return  new LoseDemo2();
        }
        }
}
