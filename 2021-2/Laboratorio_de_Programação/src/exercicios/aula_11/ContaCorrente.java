package exercicios.aula_11;

import java.text.DecimalFormat;
import java.util.Scanner;

public class ContaCorrente extends Cliente {
    /*
    Elabore uma classe Conta Corrente, com os seguintes atributos: saldo, número da conta,
    senha e titular. Titular é um atributo composto de uma classe Cliente, os atributos de uma
    classe cliente é cpf, nome e idade. Crie métodos que possibilite efetuar um saque, efetuar um
    depósito e transferir valores de uma conta para outra.
*/
    double saldo=0;
    int numeroDaConta;
    String senha;
    String titular;
    Scanner tc=new Scanner(System.in);
    DecimalFormat df=new DecimalFormat();

    public void depositar(double valor){
        System.out.println("Você está depositando o valor de "+valor+" à sua conta, digite sua senha para confirmar:");
        double novoSaldo;
        for(int i=2;i>=0;i--){
            String entrada=tc.nextLine();
            if(entrada.equals(senha)){
                System.out.println("Você depositou o valor "+valor+" com sucesso, seu novo saldo é: ");
                df.format(this.saldo+=valor);
                System.out.println("R$: "+df.format(saldo));
                break;
            }else{
                System.out.println("senha inválida, você ainda tem "+i+" tentativas até o bloqueio temporario.");
            }
            if(i==0){
                System.out.println("Conta temporariamente bloqueada, tente novamente mais tarde.");
            }
        }
    }
    public void sacar(double valor){
        System.out.println("Você está sacando: "+valor+" digite sua senha para confirmar o saque.");
        for(int i=2;i>=0;i--) {
            String entrada = tc.nextLine();
            if (entrada.equals(senha)) {
                System.out.println("Saque realizado com sucesso, seu novo saldo é: ");
                df.format(saldo -= valor);
                System.out.println("R$: " + df.format(saldo));
                break;
            } else{
                if (i == 0) {
                    System.out.println("Conta temporariamente bloqueada, tente novamente mais tarde.");
                }
                System.out.println("senha inválida, você ainda tem " + i + " tentativas até o bloqueio temporario.");
            }
        }
    }

    public void transferencia(double valor, ContaCorrente destino){
        System.out.println("Você está transferindo: "+valor+" para a conta "+destino+", digite sua senha para confirmar:");
        for(int i=2;i>=0;i--){
            String entrada = tc.nextLine();

            if (entrada.equals(senha)) {
                df.format(this.saldo -= valor);
                df.format(destino.saldo += valor);
                System.out.println("Valor depositado com sucesso na conta: "+destino+" Seu novo saldo é: ");
                System.out.println("Seu novo saldo é de: "+df.format(saldo));
            } else {
                System.out.println("Senha inválida, você ainda tem " + i + " tentativas até o bloqueio temporário");
                if (i == 0) {
                    System.out.println("Conta temporáriamente bloqueada, tente novamente mais tarde");
                }
            }
        }
    };

}
