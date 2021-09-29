package exercicios.aula_07;
import java.util.Scanner;
public class TestarPalindromo {
    /*Escreva um programa que crie um String e use um laço for para verificar se ele é um palíndromo,
    ou seja, se você inverter a ordem dos caracteres do String, obterá o mesmo String.
    Por exemplo, “abcdcba” é um palíndromo.*/

    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("Digite uma frase: ");
        String stringTest=sc.nextLine().replace(" ","");
        String reversa="";
        for(int i=stringTest.length()-1;i>=0;i--){
            reversa+=stringTest.charAt(i);
        }
        System.out.println(reversa);
        if(reversa.equals(stringTest)){
            System.out.println("Essa String é um palindromo.");
        }
        else{
            System.out.println("Essa String não é um palindromo.");
        }
    }
}
