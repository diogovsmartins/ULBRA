package aula_04;

import java.util.Scanner;

public class ReversorDeFrase {
    //4 - Construa uma classe que receba uma frase qualquer e mostre essa frase de trás para
    // a frente e sem espaços em branco.
    public static void main(String[] args) {
        Scanner sc =new Scanner(System.in);
        String frase;
        System.out.println("Digite uma frase: ");
        frase=sc.nextLine();
        String fraseRevertida= new StringBuilder(frase).reverse().toString().replace(" ","");
        System.out.println(fraseRevertida);
    }
}
