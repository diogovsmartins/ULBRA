package aula_03;

import java.util.Scanner;

public class Exercicio01 {
    public static void main(String[] args) {
        //Usando a classe Scanner para entrada de dados, crie uma classe que receba o valor de um produto e a porcentagem de desconto, calcule e mostre o valor do desconto e o valor do produto com o desconto. Observação: o valor do desconto é calculado por meio da fórmula: valor do desconto = valor do produto * percentual de desconto / 100
        Scanner tc= new Scanner(System.in);
        double preco;
        double porcentagem;
        double desconto;
        double precoComDesconto;
        System.out.println("Digite um valor para o produto: ");
        preco=tc.nextDouble();
        System.out.println("Digite o valor do desconto: ");
        porcentagem=tc.nextDouble();
        desconto=(preco*porcentagem)/100;
        precoComDesconto=preco-desconto;
        System.out.println("valor do produto: "+preco+" valor da porcentagem: "+porcentagem+"valor do desconto: "+desconto+" valor do produto com desconto: "+precoComDesconto);
    }
}
