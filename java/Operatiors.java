public class Operatiors {
    public static void main(String[] args) {
        int a=80;int b=80;int c=13;
        if(a>b && a>c){
            System.out.println("A is largest "+a);
        } else if (b>a && b>c) {
            System.out.println("B is largest "+b);
        } else if (a==b || a==c || b==c){
            System.out.println("Please enter unique number");
            System.exit(0);
        } else {
            System.out.println("C is largest "+c);
        }
    }
}
