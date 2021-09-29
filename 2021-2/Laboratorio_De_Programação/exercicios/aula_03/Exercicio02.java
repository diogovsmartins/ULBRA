package exercicios.aula_03;

import javax.swing.*;

public class Exercicio02 {
    public static void main(String[] args) {
        double valorItbi;
        double valorVenal;
        double valTransacao;
        double impostoPago;
        String dado;
        dado=JOptionPane.showInputDialog("Digite o valor da transação");
        valTransacao=Double.parseDouble(dado);
        dado=JOptionPane.showInputDialog("Digite o valor da venal");
        valorVenal=Double.parseDouble(dado);
        dado=JOptionPane.showInputDialog("Digite a porcentagem do imposto");
        valorItbi=Double.parseDouble(dado);
        if(valTransacao>valorVenal) {
            impostoPago = valTransacao * valorItbi / 100;
        }else{
            impostoPago=valorVenal*valorItbi/100;
        }
        JOptionPane.showMessageDialog(null, "O imposto a ser pago é de: "+impostoPago);

    }
}
