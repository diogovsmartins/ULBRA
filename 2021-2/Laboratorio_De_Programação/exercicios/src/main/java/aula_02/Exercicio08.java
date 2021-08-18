package aula_02;

import java.util.Scanner;

public class Exercicio08 {
    /*Faça uma classe que apresente em tela a tabuada de qualquer número.
    O usuário fornece o número desejado e a classe apresenta a relação de todos os calculos de 1 a 10*/

    public static void main(String[] args) {
        Scanner sc= new Scanner(System.in);//Scanner pra entrada
        int number;//número que o usuário vai digitar
        System.out.println("Digite um número: ");
        number=sc.nextInt();
        System.out.println("A tabuada do número que você digitou do 1 ao 10 é: ");
        //laço para fazer o calculo 10 vezes
        for(int i=1;i<=10;i++){
            System.out.print(number+"X"+i+"=");
            System.out.println(number*i);
        }
    }
}
