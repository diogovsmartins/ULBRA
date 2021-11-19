package exercicios.aula_11;

import exercicios.aula_08.Contagem;

public class Teste {
    public static void main(String[] args) {
        BombaDeAgua bomba1= new BombaDeAgua();
        bomba1.ligar(5);
        bomba1.desligado();//bomba de agua

        ContaCorrente conta2= new ContaCorrente();
        ContaCorrente conta3= new ContaCorrente();

        conta2.saldo=100;
        conta2.senha="1234";
        conta2.depositar(1050.25);//deposita e valida o usuário

        conta2.sacar(300);//saca e valida o usuário

        System.out.println(conta2.nome);
        System.out.println(conta2.saldo);
        conta2.transferencia(50, conta3);//transfere e valida o usuário
        System.out.println("saldo da conta 3 = "+conta3.saldo);
    }
}
