package exercicios.aula_07;

public class Declarar2Arrays {
    //Declare duas maneiras de declarar um array unidimensional de 12 doubles.
    public static void main(String[] args) {
        int [] forma1= new int [12];
        int [] forma2={1,2,3,4,5,6,7,8,9,10,11,12};

        for (int i=0; i<forma1.length;i++){
            System.out.println(i);
        }
        for(int i=0; i<forma2.length;i++){
            System.out.println(forma2[i]);
        }
    }
}
