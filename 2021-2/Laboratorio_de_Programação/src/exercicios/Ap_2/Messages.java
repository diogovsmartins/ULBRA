package exercicios.Ap_2;

import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.util.Scanner;

public class Messages {
    Scanner input= new Scanner(System.in);

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


}
