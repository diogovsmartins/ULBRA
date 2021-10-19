package exercicios.aula_02;

import javax.swing.*;
//*Usando a classe JOptionPane para entrada de dados, elabore uma classe que receba
//   a nota de duas provas e de um trabalho. Calcule e mostre a media e o resultado
//   final (aprovado ou reprovado). Para calcular a media utilize a formula seguinte:
//   media = (nota da prova 1 + nota da prova 2 + nota do trabalho) / 3.
//   Considere que a media minima para aprovacao e 6.
//    */
public class Exercicio03 {

    public static void main(String[] args) {
      String inputNota1=JOptionPane.showInputDialog("Digite a nota para a prova 1: ");
      float nota1=Float.parseFloat(inputNota1);
      System.out.println(nota1);

      String inputNota2=JOptionPane.showInputDialog("Digite a nota para a prova 1: ");
      float nota2=Float.parseFloat(inputNota2);
      System.out.println(nota2);

      float media=(nota1+nota2)/2;
      System.out.println(media);

      if(media>=6){
          JOptionPane.showMessageDialog(null,"Sua media foi superior a 6, você está aprovado.");
      }else{
          JOptionPane.showMessageDialog(null,"Você está reprovado, sua media final foi inferior a 6.");
      }

    }
}
