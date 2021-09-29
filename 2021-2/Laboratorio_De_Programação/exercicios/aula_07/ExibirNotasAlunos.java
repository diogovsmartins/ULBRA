package exercicios.aula_07;

import java.util.Arrays;
import java.util.Scanner;

public class ExibirNotasAlunos {
    /*Elabore uma classe que receba 5 notas de alunos por meio, armazene essas notas
    em um array de cinco elementos, apresente em tela as cinco notas em ordem decrescente
    (da maior para a menor) e a média aritmética das notas.
     */
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        double [] notas=new double[5];
        double soma=0;

        for (int i=0;i<5;i++){
            System.out.println("Digite um valor: ");
            notas[i]=sc.nextDouble();
            soma+=notas[i];
        }

        Arrays.sort(notas);
        double media=soma/notas.length;

        for(int i=notas.length-1;i>=0;i--){
            System.out.println(notas[i]);
        }

        System.out.println("A media das notas é: "+media);

    }
}
