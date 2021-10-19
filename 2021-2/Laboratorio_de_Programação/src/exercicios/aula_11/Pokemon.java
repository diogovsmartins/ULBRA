package exercicios.aula_11;

public class Pokemon {
    String nome;
    String tipo;
    int nivel;
    int hp;
    int atk;
    int peso;
    String descricao;

    public void atacar(){
        atk++;
        System.out.println("Ataque "+nome+" !!");
    }

    @Override
    public String toString() {
        return "Pokemon{" +
                "nome='" + nome + '\'' +
                ", tipo='" + tipo + '\'' +
                ", nivel=" + nivel +
                ", hp=" + hp +
                ", atk=" + atk +
                ", peso=" + peso +
                ", descricao='" + descricao + '\'' +
                '}';
    }
}
