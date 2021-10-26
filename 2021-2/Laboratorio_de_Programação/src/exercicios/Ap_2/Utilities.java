package exercicios.Ap_2;

import javax.swing.*;
import java.text.ParseException;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Utilities extends Messages{

    //JoptionPane methods
    public String jOptionPaneString(String msg){
         return JOptionPane.showInputDialog(msg);
    }
    public float jOptionPaneFloat(){
        return Float.parseFloat(JOptionPane.showInputDialog(msgDouble()));
    }
    public char jOptionPaneChar(){
        return JOptionPane.showInputDialog(msgChar()).charAt(0);
    }
    public int jOptionPaneInt(){
        return Integer.parseInt(JOptionPane.showInputDialog(msgInt()));
    }
    public double jOptionPaneDouble(){
        return Double.parseDouble(JOptionPane.showInputDialog(msgDouble()));
    }

    //String Methods
    public String inputString(){
        System.out.println(msgString());
        return input.nextLine();
    }
    public String inputString(String msg){
        System.out.println(msg);
        return input.nextLine();
    }

    //Float Methods
    public float inputFloat(){
        System.out.println(msgDouble());
        return input.nextFloat();
    }
    public float inputFloat(String msg){
        System.out.println(msg);
        return input.nextFloat();
    }

    //Int Methods
    public int inputInt(){
        System.out.println(msgInt());
        return input.nextInt();
    }
    public int inputInt(String msg){
        System.out.println(msg);
        return input.nextInt();
    }

    //Double Methods
    public double inputDouble() {
        System.out.println(msgDouble());
        return input.nextDouble();
    }
    public double inputDouble(String msg){
        System.out.println(msg);
        return input.nextDouble();
    }

    //Char Methods
    public char inputChar(){
        System.out.println(msgChar());
        return input.next().charAt(0);
    }
    public char inputChar(String msg){
        System.out.println(msg);
        return input.next().charAt(0);
    }

    //Cellphone formatter
    public String inputCellphone(){
        System.out.println("Type your phone number with your code area and without spaces like: 051xxxxxxxxx ");
        String number;
            do{
               number=(input.nextLine());
            }while ((number.length()!=12) || (!number.matches("[0-9]*")));

            return number;
    }

    public String formatCellphone(){
        String number= (inputCellphone());
        String format=String.format("(%s) %s-%s",number.substring(0,3),number.substring(3,8),number.substring(8,12));
        return format;
    }

    //Date formatter
    public Date dateFormatter() throws Exception {
        System.out.println(msgDate());
        Date date = null;
        try{
           date=dateFormatter.parse(input.nextLine());
        } catch(ParseException e){
            return null;
        }
        return date;
    }

    //Change date to month first
    public String monthFirstDate(Date date){
        try {
            return monthFirstFormatter.format(date);
        } catch (Exception e) {
            return "null";
        }
    }

    //Validate if input is a number
    public boolean validateInput(){
        String number= String.valueOf(inputChar());
        if((number.matches("[0-9]*"))){
            return true;
        }else return false;
    }

    //Validate email
    public String validateEmail(){
        System.out.println(msgEmail());
        String email=input.nextLine();
        if(email != null && email.length()!=0) {
            String expectedPattern = "^[\\w.-]+@([\\w\\-]+\\.)+[a-zA-Z]{2,4}$";
            Pattern pattern = Pattern.compile(expectedPattern, Pattern.CASE_INSENSITIVE);
            Matcher matcher = pattern.matcher(email);
            if (matcher.matches()) {
                return email;
            }
        }
        return null;
    }
}