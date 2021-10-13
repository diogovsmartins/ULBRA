package exercicios.aula_07;

public class ConstruçãoDeMetodos {
    public static void main(String[] args) {
        hello();
    }
    //metodos são criados com um modificador de acesso, um tipo de retorno um nome e opcionalmente parametros
    public static int somar2numeros(int a, int b){
        int c =a+b;
        return c;
    }//metodos precisam fazer sómente uma coisa
    public static void hello(){
        System.out.println("hello world");
    }
}
