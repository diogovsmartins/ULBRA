package exercicios.aula_07;

public class ArrayParOuImpar {
    /*Faça uma classe contendo dois arrays do tipo inteiro, um chamado par
    e outro chamado ímpar. Cada array deve conter 10 elementos. A seguir, faça um laço de
    repetição com 10 iterações e que contenha internamente a geração randômica de números entre 1 e 20.
    Se o valor gerado for par, armazene no array chamado par, caso contrário, no array chamado impar.
    Ao  final, apresente o conteúdo de cada um dos arrays.
     */
    public static void main(String[] args) {
        arrays();

    }
    public static int [] arrays(){
        int [] arrayImpar=new int [10];
        int [] arrayPar=new int [10];
        int[] arrayFinal= new int[10];

        for(int i=0; i<10;i++){
            int random= (int) (Math.random()*20)+1;
            if(random%2==0){
                arrayPar[i]=random;
                arrayFinal[i]=arrayPar[i];
            } else{
                arrayImpar[i]=random;
                arrayFinal[i]=arrayImpar[i];
            }
        }

        for(int i=0;i<10;i++){
            System.out.println(arrayFinal[i]);
        }
        return arrayFinal;
    }
}
