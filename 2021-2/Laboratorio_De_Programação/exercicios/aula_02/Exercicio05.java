package exercicios.aula_02;

import java.util.Scanner;

public class Exercicio05 {
    public static void main(String[] args) {
        /*Elabore uma classe que receba o nome de um produto e o seu valor.
        O desconto deve ser calculado de acordo com o valor fornecido conforme a imagem.
        Utilizando a estrutura if-else, apresenta em tela o nome do produto, valor original
        do produto e o novo valor depois de ser realizado o desconto. Caso o valor
        digitado seja menor que zero, deve ser emitida uma mensagem de aviso.
         */
        String nome;
        double valor;
        Scanner sc=new Scanner(System.in);
        System.out.println("Digite o nome do produto: ");
        nome=sc.next();
        System.out.println("Digite o valor do produto "+nome+": ");
        valor= sc.nextDouble();
        double desconto;
        double novoValor;
        if((valor>=50) && (valor<=200)){
            desconto=valor*5/100;
            novoValor=valor-desconto;
            System.out.println("O valor do produto antes do desconto era de "+valor+" e seu novo valor após receber o desconto é de "+novoValor);
        }
        else if((valor>=200)&&(valor<500)){
            desconto=valor*6/100;
            novoValor=valor-desconto;
            System.out.println("O valor do produto antes do desconto era de "+valor+" e seu novo valor após receber o desconto é de "+novoValor);
        }
        else if((valor>=500)&&(valor<1000)){
            desconto=valor*7/100;
            novoValor=valor-desconto;
            System.out.println("O valor do produto antes do desconto era de "+valor+" e seu novo valor após receber o desconto é de "+novoValor);
        }
        else if((valor>1000)){
            desconto=valor*8/100;
            novoValor=valor-desconto;
            System.out.println("O valor do produto antes do desconto era de "+valor+" e seu novo valor após receber o desconto é de "+novoValor);
        }
        else{
            System.out.println("O valor do produto é baixo demais para que os descontos sejam aplicáveis.");
        }
    }
}
