package exercicios.aula_13;

public class Main {

    public static void main(String[] args) {
        Lista canil= new Lista();
        Cao cao = new Cao();
        cao.ler();
        canil.add(cao);

        Cao cao2 = new Cao();
        cao2.ler();
        canil.addFim(cao2);

        Cao cao3 = new Cao();
        cao3.ler();
        canil.addFim(cao3);

        Cao cao4 = new Cao();
        cao4.ler();
        canil.addFim(cao4);

        canil.removerFim();
        canil.listar();
    }
}
