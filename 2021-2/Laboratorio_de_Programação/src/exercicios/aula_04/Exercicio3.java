package exercicios.aula_04;

import java.util.Random;

/*3 - Crie uma classe que gera um número aleatoriamente (entre 5 e 10) por Math.random.
Em seguida, faça com que apareça em tela uma senha numérica contendo a mesma quantidade
de dígitos correspondentes ao valor aleatório gerado. Apresente em tela o número sorteado e a senha.
 */
public class Exercicio3 {
    public static void main(String[] args) {
        int sorteio=(int)(Math.random()*6)+5;
        String senha="";
       for(int i=0; i<sorteio;i++){
            senha+=String.valueOf((int)(Math.random()*6)+5);
       }
        System.out.println(sorteio);
        System.out.println(senha);

    }

}
