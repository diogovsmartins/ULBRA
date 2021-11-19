package exercicios.aula_04;

import java.util.Scanner;

/*1 - Crie uma classe que simule a jogada de um dado de seis lados (números de 1 a 6)
 por três vezes. Ao  final some seus valores e apresente o resultado das três jogadas.
 */
//por algum motivo me deu vontade de dar uma viajada XD
public class Exercicio1 {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int soma=0;
        String resposta;
        System.out.println("Você avista uma porta feita totalmente de pedra, ela parece velha e pesada. Você quer tentar abri-lá usando sua força? (Digite sim ou não)");
        resposta=sc.next();
        if(resposta.equals("sim")){
            System.out.println("Rolando dados...");
            for(int i=0; i<3; i++){
                int dado= (int) (Math.random()*6)+1;
                System.out.println(dado);
                soma+=dado;
            }
            System.out.println("A soma das suas rolagens é: "+soma);
            if(soma<10){
                System.out.println("Você tentou empurrar a porta de pedra com toda sua força, mas a porta se mostrou muito mais pesada do que você imaginava. Você falhou no teste de força.");
            }
            else if(soma>10){
                System.out.println("Você empurrou a porta com toda a sua força e com um pouco de esforço você conseguiu abri-la. Você passou no teste de força.");
            }
        }else{
            System.out.println("Você decidiu procurar outra forma de entrar na dungeon...");
        }

    }
}
