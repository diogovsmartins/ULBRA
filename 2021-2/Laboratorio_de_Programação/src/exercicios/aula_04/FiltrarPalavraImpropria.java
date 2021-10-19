package exercicios.aula_04;

import java.util.Locale;
import java.util.Scanner;

public class FiltrarPalavraImpropria {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        String frase;
        System.out.println("Digite uma frase: ");
        frase=sc.nextLine();
        if(frase.toLowerCase(Locale.ROOT).contains(("sexo"))){
            System.out.println(frase.replace("sexo", "****"));
            System.out.println("A frase contém palavras improprias.");
        }
        else if(frase.toLowerCase(Locale.ROOT).contains(("sexual"))){
            System.out.println(frase.replace("sexual", "******"));
            System.out.println("A frase contém palavras improprias.");
        }
        else{
            System.out.println(frase);
            System.out.println("A palavra não contém palavras improprias.");
        }
    }
}
