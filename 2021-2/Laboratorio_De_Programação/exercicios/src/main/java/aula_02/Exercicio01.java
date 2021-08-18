package aula_02;
import java.util.Scanner;
public class Exercicio01 {
    /* Usando a classe Scanner para entrada de dados, crie uma classe que receba
    o valor de um produto e a porcentagem de desconto, calcule e mostre
    o valor do desconto e o valor do produto com o desconto.
    Observação: o valor do desconto é calculado por meio da
    fórmula: valor do desconto = valor do produto * percentual de desconto / 100.
     */

    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);

        System.out.println("Digite o valor do produto: ");
        double valor=sc.nextDouble();

        System.out.println("Digite a porcentagem de desconto: ");
        double desconto=sc.nextDouble();

       double valorDesconto=valor*(desconto/100);
       System.out.println("Valor total: "+ valorDesconto);
        System.out.println("Valor total: "+(valor-valorDesconto));

    }
}
