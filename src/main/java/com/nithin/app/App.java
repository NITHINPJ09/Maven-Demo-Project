package com.nithin.app;
import java.util.Scanner; 
// import Cowsay class from the library
import com.github.ricksbrown.cowsay.Cowsay; 

public class App 
{
    public static void main(String[] args)
    {
        System.out.println("<---PROGRAM FOR ADDING TWO NUMBERS--->");
        App obj = new App();
        int x, y, result;  
        Scanner sc = new Scanner(System.in);  
        System.out.print("Enter the first number: ");  
        x = sc.nextInt();  
        System.out.print("Enter the second number: ");  
        y = sc.nextInt();   
        result = obj.sum(x, y);
        String[] cowArgs = new String[]{String.valueOf(result)};
        String cowString = Cowsay.say(cowArgs);
	System.out.println(cowString);
    }

    public int sum(int a, int b)
    {
        return a+b;
    }
}
