package exercicios.aula_01;

import java.util.Scanner;
public class Exercicio_12_aula_01 {
    /*12- A gravidade da Lua é cerca de 17% a da Terra.
     Crie um programa que calcule seu peso na Lua. 	*/

    public static void main(String[] args) {
        System.out.println("quantos kilos você tem?");
        Scanner getPeso = new Scanner(System.in);
        int peso=getPeso.nextInt();
        System.out.println("Você tem "+peso+"kgs.");
        double pesoLunar=peso*1.17;
        System.out.println("Seu peso na lua seria de: " + pesoLunar);
    }
}
