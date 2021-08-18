package aula_01;
import java.util.Scanner;
public class exercico_13_aula_01 {
    /*13 - Faça um programa que calcula a que distância,
    em pés, um ouvinte está da queda de um relâmpago.
    O som viaja a aproximadamente 1.100 pés por segundo pelo ar.
    Logo, conhecer o intervalo entre o momento em que você viu um relâmpago e o momento
    em que o som o alcançou lhe permitirá calcular a distância do relâmpago.
    Para este projeto, considere que o intervalo seja de 7,2 segundos.
     */

    public static void main(String[] args) {
        int velocidade=1100;

        System.out.println("A quantos segundos você escutou o relâmpago?");
        Scanner intervaloOuvinte= new Scanner(System.in);
        double intervalo=intervaloOuvinte.nextDouble();
        double distancia=(intervalo)*(velocidade);
        System.out.println("A distância entre você e o raio provavelmente é de "+distancia+" pés");
    }
}
