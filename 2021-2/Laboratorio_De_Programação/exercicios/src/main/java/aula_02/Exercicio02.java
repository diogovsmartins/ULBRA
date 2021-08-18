package aula_02;
import javax.swing.*;
import java.util.Scanner;
public class Exercicio02 {
    /*O Imposto sobre a Transmissão de Bens Móveis (ITBI) é aplicado sobre
    o valor de um imóvel a ser negociado. A base de cálculo do ITBI
    (o valor a ser considerado no cálculo) será o maior valor entre o valor de transação
    (o valor negociado) e o valor venal de referência (fornecido pela Prefeitura).
    Com base nisso, elabore uma classe que receba o valor da transação,
    o valor venal e o percentual de imposto. Após isso,
    encontre o maior valor e aplique o percentual sobre ele.
    Ao final, apresente o valor do imposto a ser pago. Observação: o valor do imposto a ser
    pago é calculado por meio da fórmula: valor do imposto = maior valor * percentual
    / 100. Para entrada e saída de dados utilize a classe JOptionPane.
     */
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);

        System.out.println("Digite o valor da transação: ");
        double valorTrans=sc.nextDouble();

        System.out.println("Digite o valor venal: ");
        double valorVenal=sc.nextDouble();

        System.out.println("Percentual de imposto: ");
        double percentImposto=sc.nextDouble();

        double valorImposto=0;
        if(valorVenal > valorTrans){
            valorImposto=valorTrans*valorImposto/100;
        }else{
            valorImposto=valorVenal*(valorImposto/100);
        }
        //JOptionPane.showMessageDialog(null,"O valor do imposto a ser pago é: "+valorImposto,"warning",JOptionPane.ERROR_MESSAGE);
        JOptionPane.showMessageDialog(null,"Valor do imposto é: "+valorImposto);
        }
}
