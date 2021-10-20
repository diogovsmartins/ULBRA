package exercicios.Ap_2;

import java.time.LocalDate;

public class Utilities extends Messages{
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

    //Formatar celular
    public String inputCellphone(){
        System.out.println("Digite seu numero de celular com o código de área: ");
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
    public String formatDate(int day, int month, int year){
        String dateFormat=String.format("%s/%s/%s",day,month,year);
        if((day<=31)&&(month<=12)&&(year>0)) {
            return dateFormat;
        }else{
            return null;
        }
    }
    //Validate if input is a number
    public boolean validateInput(){
        String number= String.valueOf(inputChar());
        if((number.matches("[0-9]*"))){
            return true;
        }else return false;
    }
}
