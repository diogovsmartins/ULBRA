package exercicios.aula_07;
import java.util.Scanner;

public class SimulaEstacionamento {
    /*Usando um array unidimensional de 10 elementos do tipo String, faça uma classe que simule
     a ocupação de um estacionamento de veículos. Considere que a posição do array corresponde
     ao número da vaga e para cada vaga é armazenada a placa do veículo que está estacionado.
     Sua classe deve conter um laço de repetição simulando um menu que controle a entrada e a
     saída dos veículos com as opções: 1-Entrada, 2-Saída e 3-Listar situação atual e 4-Encerrar
     o programa. Se o usuário escolher 1, solicite o número da vaga e a placa do veículo;
     se escolher 2, solicite o número da vaga que será liberada e armazene o valor branco
     na posição correspondente ao array; se escolher 3, liste a situação atual apresentando
     em tela todos os elementos do array; quando for 4, encerre o laço e o programa.
     */
    public static void main(String[] args) {
        String [] estacionamento= new String[10];
        Scanner sc=new Scanner(System.in);
        int opcao;
        int vaga;
        String veiculo;

        for(int i=0;i<10;i++){
            System.out.println("Bem vindo ao menu do estacionamento, digite 1 para estacionar um carro, 2 para sair, 3 para listar as vagas e 4 para encerrar.");
            opcao=sc.nextInt();
            //Colocar veiculo na vaga e validar se ela está ocupada ou não e se o usuário não vai tentar acessar um indice maior do que o numero de vagas
            if(opcao==1){
                System.out.println("Digite qual o numero da vaga em que deseja estacionar (0 a 9): ");
                vaga=sc.nextInt();
                if(vaga<10){
                    if(estacionamento[vaga]!=null){
                        System.out.println("Esta vaga ja está sendo ocupada, tente outra vaga.");
                        continue;
                    }
                    System.out.println("Agora digite a placa do seu veículo: ");
                    veiculo=sc.next();
                    estacionamento[vaga]=veiculo;
                    System.out.println("Seu carro foi guardado na vaga "+vaga+" e sua placa é: "+estacionamento[vaga]);
                }
            }
            //retirar veiculo de uma vaga e tratar os inputs
            if(opcao==2){
                System.out.println("Digite de qual vaga o carro será retirado (0 a 9): ");
                vaga=sc.nextInt();
                if(vaga<10){
                    if(estacionamento[vaga]==null){
                        System.out.println("Esta vaga está vazia, não existem carros para serem retirados.");
                        continue;
                    }
                    else if(estacionamento[vaga]!=null){
                        System.out.println("O carro com a placa: "+estacionamento[vaga]+" foi retirado da vaga numero "+vaga);
                        estacionamento[vaga]=null;
                    }
                }
            }
            if(opcao==3){
                System.out.println("Esta é a lista das vagas: ");
                for (String item: estacionamento) {
                    System.out.println(item);
                }
            }
            if(opcao==4){
                System.out.println("Encerrando menu do estacionamento.");
                break;
            }
        }
    }
}
