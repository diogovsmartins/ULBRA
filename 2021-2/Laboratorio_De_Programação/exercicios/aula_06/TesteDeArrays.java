package exercicios.aula_06;

import java.util.Scanner;

public class TesteDeArrays {
    public static void main(String[] args) {
        int [] numeros = new int[10];//estrutura de criação de um array, tipo seguido de [] nome da variavel tipo de novo e tamanho do array
        String [] frutas= {"abacaxi", "laranja", "maça"};//atribuição de valores na criação
        numeros[0]=3;
        for(int i=0; i<10; i++){
            numeros[i]=(i+2)*2;
            System.out.println(numeros[i]);
        }//percorrer um array usando um laço

        System.out.println(numeros.length);//metodo lenght mostra o tamanho do array, nesse caso 10 posições então é 10

        for(String fruit: frutas){
            System.out.println(fruit);
        }
        for (int i=0;i<10;i++){
            if(frutas[i].equals("maça")){
                System.out.println("achou");
                break;
            }
        }

    }
}
