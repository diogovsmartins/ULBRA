package exercicios.aula_07;
import java.util.Scanner;

public class ArrayData {
    /*Escreva um programa que crie um array de inteiros data e use um laço for para criar
    um novo String que exiba o conteúdo do array data entre chaves e separado por vírgulas.
    Por exemplo, se o array data tiver tamanho 4 e armazenar os valores 3, 4, 1, 5,
    o String “{3, 4, 1, 5}” deve ser criado e exibido.
     */
    public static void main(String[] args) {
        int[] data=new int[10];
        Scanner sc=new Scanner(System.in);

        for(int i=0;i<10;i++){
            System.out.println("Type a number: ");
           int input=sc.nextInt();
            data[i]=input;

        }
        for(int i=0;i<10;i++){
            System.out.println(data[i]);
        }
    }
}
