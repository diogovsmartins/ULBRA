package aula_02;

import java.util.Arrays;
import java.util.Scanner;

public class Exercicio06 {
    public static void main(String[] args) {
        /*Na área da eletrônica, em um circuito em série temos que a resistência
        equivalente (total) desse circuito é obtida mediante a soma de todas as
        resistências existentes (RE = r1 + r2 + ... + rn). Faça uma classe que
        receba o valor de quatro resistências ligadas em série, calcule e mostre
        a resistência equivalente, a maior e a menor resistência.
         */
        double totalRes=0;  //variavel que vai gravar o total dos valores das resistencias
        double value; //variavel que vai ser usada pra atribuir o valor que o usuário digitar a um index do array
        Scanner sc=new Scanner(System.in); //Scanner pra pegar a entrada do usuário
        double [] circuits = new double[4]; //Array de tamanho 4 para armazenar os valores dos circuitos

        for(int i=0; i<4;i++){
            System.out.println("Digite o valor da resistência"+i+": ");
            value=sc.nextDouble();
            circuits[i]=value;
            totalRes+=circuits[i];
        }
        Arrays.sort(circuits);//utilizar o metodo sort para ordenar do menor pro maior
        double smallestRes=circuits[3];//maior numero do array
        double biggestRes=circuits[0];//menor numero do array
        //resultados
        System.out.println("A resistencia total do circuito é: "+totalRes);
        System.out.println("A maior resistência é de: "+biggestRes);
        System.out.println("A menor resistencia é de: "+smallestRes);

    }
}
