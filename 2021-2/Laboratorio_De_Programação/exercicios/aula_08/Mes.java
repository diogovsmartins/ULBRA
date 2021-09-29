package exercicios.aula_08;

public class Mes {
    /*Faça uma classe chamada Mes que possua um método chamado getMesPorExtenso
    que recebe um número inteiro, referente ao mês do ano, um código referente ao idioma
    (1 para português e 2 para inglês) e retorne o mês por extenso. A tabela a seguir ilustra alguns exemplos.
    Faça também outra classe para testar o método.
     */
    public static void main(String[] args) {

        System.out.println(getMesPorExtenso(1,3));
    }
    public static String getMesPorExtenso(int nMes, int codIdioma){
        String []arrayPt={"janeiro","Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"};
        String []arrayEn={"January", "February", "March", "April", "May" ,"June", "July", "August", "September", "October", "November", "December"};

        if(codIdioma==1){
            return arrayPt[nMes];
        }else if(codIdioma==2){
            return arrayEn[nMes];
        }else{
            return "Type 1 or 2 ";
        }
    }
}
