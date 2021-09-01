package aula_04;

import java.text.DecimalFormat;
import java.util.Scanner;

public class Exercicio2 {
    /*2 - Uma farmácia precisa ajustar os preços de seus produtos em 12%. Elabore uma classe que receba
    o valor do produto e aplique o percentual de acréscimo. O novo valor a ser calculado deve ser
    arredondado para mais ou para menos usando o método round. A classe deve também conter um laço
    de repetição que encerre o programa quando o usuário fornecer o valor zero
    (0) para o valor do produto. Dessa forma, o usuário digita o valor do produto, a classe calcula
    e mostra o valor com acréscimo, a seguir solicita um novo valor. Esse processo continua enquanto
     o valor do produto for diferente de zero; caso contrário o programa será encerrado
*/
    public static void main(String[] args) {
        String nomeDoProduto;
        double valorDoProduto;
        double valorAcrescido;
        Scanner sc=new Scanner(System.in);
        DecimalFormat fc= new DecimalFormat();
        fc.applyPattern("#.00");
        do{
            System.out.println("Digite qual o nome do produto que deseja cadastrar: ");
            nomeDoProduto=sc.next();
            System.out.println("Digite qual o valor do produto"+nomeDoProduto+": ");
            valorDoProduto=sc.nextDouble();
            valorAcrescido=valorDoProduto*1.12;
            if(valorDoProduto>0){
                System.out.println("O valor do produto"+nomeDoProduto+" com o acrescimo de 12% é: "+((fc.format(valorAcrescido)))+" R$");
            }
            else{
                System.out.println("Programa finalizado. Volte sempre!");
            }
        }while(valorDoProduto!=0);
    }
}
