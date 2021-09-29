package exercicios;

import exercicios.aula_08.Contagem;
import exercicios.aula_08.Mes;
import exercicios.aula_08.MeusArrays;
import exercicios.aula_08.Senha;

public class Teste {

    public static void main(String[] args) {
        //Teste da classe Mes
        String teste=Mes.getMesPorExtenso(3,2);
        System.out.println(teste);
        //Teste da class contagem
        Contagem.contar();
        Contagem.contar(100);
        Contagem.contar(30, 50);
        //Contagem.contar(1, 50, 500);
        //Teste MeusArrays
        int[]meuA={1,2,3,5};
        //TesteSenha
        Senha.Senha();
        System.out.println(Senha.Senha());

    }

}
