package aula_02;

import java.util.Scanner;

public class Exercicio07 {
    /*Faça uma classe que solicite o login e a senha, simulando o acesso a um sistema.
    * Considere que os conteúdos de login e senha originais são iguais a "java8".
    * O usuário deverá fornecer o login e a senha e você irá compará-los com os conteúdos originais.
    * O usuário tem três chances para digitar corretamente os dados de login e a senha.
    * Para cada tentativa incorreta deve aparecer uma mensagem alertando o erro e o apresentando a
    * quantidade de tentativas que ainda restam. */

    public static void main(String[] args) {
        String validLogin="40048900"; //login valido
        String validPassword="rr102030";//senha valida

        Scanner sc= new Scanner(System.in); //usado para atribuir os valores às variáveis
        String login; //login que o usuário vai digitar
        String password; //senha que o usuário vai digitar

        int chances=3;
        do{
            System.out.println("Digite aqui o seu login: ");
            login=sc.next();
            System.out.println("Digite aqui sua senha: ");
            password=sc.next();
            chances--;
            if((login.equals(validLogin))&&(password.equals(validPassword))) {
                System.out.println("Você foi logado com sucesso.");
            }else{
                System.out.println("Não foi possivel efetuar o login, verifique se a senha ou o login estão corretos.");
                System.out.println("Você ainda tem "+chances+" tentativas.");
            }
        }while(chances>0);

    }

}
