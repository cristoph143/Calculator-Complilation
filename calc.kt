import java.util.*;


// main function
public class Main {
    public static void main(String[] args){
        try {
            while (true) {
                String input_ops = input_ops();
                int num1 = input_num();
                int num2 = input_num();
                int calculate_ops = calculate_ops(input_ops, num1, num2);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}

// input_ops function where it returns the operator
public static String input_ops(){
    Scanner scanner = new Scanner(System.in);
    String operator = "";
    try {
        System.out.print("Enter an operator: ");
        ops = scanner.nextLine();
        if(!ops.equals("+") && 
            !ops.equals("-") && 
            !ops.equals("*") && 
            !ops.equals("/") && ){
                System.out.println("Error: Invalid operator");
                input_ops();
        }
        else if(ops.equals("q")){
            System.exit(0);
        }
    } catch (Exception e) {
        System.out.println("Error: " + e.getMessage());
    }
    return operator;
}

// input_num function where it returns the number
public static int input_num(){
    Scanner scanner = new Scanner(System.in);
    int num = 0;
    try {
        System.out.print("Enter a number: ");
        num = scanner.nextInt();
    } catch (Exception e) {
        System.out.println("Error: " + e.getMessage());
    }
    return num;
}

// calculate_ops function where it returns the result in float
public static float calculate_ops(String input_ops, int num1, int num2){
    float result = 0;
    try {
        if(input_ops.equals("+")){
            result = num1 + num2;
        }
        else if(input_ops.equals("-")){
            result = num1 - num2;
        }
        else if(input_ops.equals("*")){
            result = num1 * num2;
        }
        else if(input_ops.equals("/")){
            if(num2 == 0){
                System.out.println("Error: Cannot divide by 0");
                input_ops();
            }
            else{
                result = num1 / num2;
            }
        }
    } catch (Exception e) {
        System.out.println("Error: " + e.getMessage());
    }
    return result;
}