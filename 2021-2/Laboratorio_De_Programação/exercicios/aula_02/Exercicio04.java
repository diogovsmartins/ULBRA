package exercicios.aula_02;
    /*Considere a seguinte informação a respeito do cálculo da aposentadoria.
    Para se aposentar por idade, as mulheres precisam ter atingido 60 anos
    de idade e os homens, 65. Já na aposentadoria por tempo de contribuição,
    o tempo mínimo exigido é de 30 anos para as mulheres e de 35 anos para os homens.
    Com base nessas informações, elabore uma classe que receba a idade de uma pessoa,
    seu sexo e a quantidade de anos de contribuição. A seguir, calcule a quantidade
    de anos que falta de contribuição para se aposentar, ou então emita a mensagem:
    “você já tem o direito a aposentadoria”. */
import java.util.Scanner;
public class Exercicio04 {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);

        System.out.println("Digite sua idade: ");
        int idade=sc.nextInt();

        System.out.println("Você é do sexo masculino ou feminino? Digite M/F");
        String sexo=sc.next();

        System.out.println("Por ultimo digite quantos anos de contribuição você teve: ");
        int contribuicao=sc.nextInt();

       /*checar se a pessoa é mulher, se for mulher checar as condições
       para aposentadoria e dar o retorno adequado*/
        if (sexo.equals("F")){
            if((idade>=60) && (contribuicao>=30)){
                System.out.println("Você já pode se aposentar.");
            }
            else{
                System.out.println("Você ainda não pode se aposentar, pois ainda falta algum requisito, abaixo você pode ver quais os requisitos que ainda faltam.");
                if(idade<60){
                    System.out.println("Ainda faltam "+(60-idade)+" anos para você cumprir o requisito de idade.");
                }
                if(contribuicao<30){
                    System.out.println("Ainda faltam "+(30-contribuicao)+" anos de contribuição para você cumprir o requisito de contribuição.");
                }
            }
        }

       /*realizar a mesma checagem feita para a mulher se o sexo for masculino*/
        if (sexo.equals("M")){
            if((idade>=65) && (contribuicao>=35)){
                System.out.println("Você já pode se aposentar.");
            }
            else{
                System.out.println("Você ainda não pode se aposentar, pois ainda falta algum requisito, abaixo você pode ver quais os requisitos que ainda faltam.");
                if(idade<65){
                    System.out.println("Ainda faltam "+(65-idade)+" anos para você cumprir o requisito de idade.");
                }
                if(contribuicao<35){
                    System.out.println("Ainda faltam "+(35-contribuicao)+" anos de contribuição para você cumprir o requisito de contribuição.");
                }
            }
        }

       }
    }
