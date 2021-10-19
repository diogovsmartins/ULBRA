package exercicios.aula_11;

public class Gengar {
    public static void main(String[] args) {
        Pokemon Gengar= new Pokemon();
        Gengar.nome="Gengar";
        Gengar.tipo="Ghost";
        Gengar.descricao="Pokemon fantasma que gosta de assustar pregar peças em humanos";
        Gengar.hp=155;
        Gengar.atk=184;
        Gengar.nivel=60;
        Gengar.peso=15;
        System.out.println(Gengar.toString());
    }
}
