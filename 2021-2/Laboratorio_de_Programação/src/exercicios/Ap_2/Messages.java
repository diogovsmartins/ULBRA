package exercicios.Ap_2;

import java.text.SimpleDateFormat;
import java.util.Scanner;

public class Messages {
    Scanner input= new Scanner(System.in);
    SimpleDateFormat dateFormatter= new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat monthFirstFormatter = new SimpleDateFormat("MM/dd/yyyy");



    public String msgInt(){
        return "Type a Integer number: ";
    }

    public String msgDouble(){
        return "Type a floating point number: ";
    }

    public String msgString(){
        return "Type some words: ";
    }

    public String msgChar(){
        return "Type a letter or a number: ";
    }

    public String msgDate(){
        return "Type a date ex: dd/MM/yyyy: ";
    }

    public String msgEmail(){return "Type your email: ";}
}
