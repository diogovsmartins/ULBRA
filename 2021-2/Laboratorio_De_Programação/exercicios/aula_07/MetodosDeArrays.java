package exercicios.aula_07;

import java.util.Scanner;
//Já que todos os strings são objetos de tipo String, mostre como chamar
// os métodos length( ) e charAt( ) neste literal de string: “I like Java”.
public class MetodosDeArrays {
    public static void main(String[] args) {
        String teste="I like java";

        for(int i=0;i<teste.length();i++){
            System.out.println(teste.charAt(i));
        }
    }
}
