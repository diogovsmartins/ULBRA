package exercicios.aula_07;

public class RandomizarMesDoAno {
    /*Crie uma classe que armazena os 12 meses do ano em um array. A seguir, gere um valor randômico
    entre 0 e 11 e apresente o mês correspondente ao valor sorteado. Considere que o valor 0 corresponde
    ao mês de janeiro e o valor 11, ao mês de dezembro.*/
    public static void main(String[] args) {
        String[] meses={"Janeiro", "Fevereiro", "Março", "Abril", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"};
        for(int i=0; i<1;i++){
            int numero= (int) (Math.random()*12);
            System.out.println(meses[numero]);
        }
    }
}
