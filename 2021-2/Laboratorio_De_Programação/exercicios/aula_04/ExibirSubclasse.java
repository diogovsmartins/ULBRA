package exercicios.aula_04;

import java.util.Scanner;

public class ExibirSubclasse {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        String frase;
        System.out.println("Digite uma frase: ");
        frase=sc.nextLine();
        System.out.println(frase.substring(0, frase.length()-1));
    }


}
