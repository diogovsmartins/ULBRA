package exercicios.aula_11;

public class Cliente {
    /*
    Elabore uma classe Conta Corrente, com os seguintes atributos: saldo, número da conta,
    senha e titular. Titular é um atributo composto de uma classe Cliente, os atributos de uma
    classe cliente é cpf, nome e idade. Crie métodos que possibilite efetuar um saque, efetuar um
    depósito e transferir valores de uma conta para outra.
*/

    String cpf="134.532.945-82";
    String nome="Arnaldo Santos Silva";
    String idade="64";

    public void newClient(String cpf, String nome, String idade){
        this.cpf=cpf;
        this.nome=nome;
        this.idade=idade;
    }
}
