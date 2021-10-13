package exercicios.aula_07;

import java.util.Scanner;

public class Imagem {
    /*Uma imagem é formada por pixels. Considere uma imagem com dimensão de 40 x 40 e faça uma
    classe que contenha um array bidimensional com essas dimensões. A seguir, para cada posição
    desse array bidimensional armazene um valor aleatório entre 0 e 255
    (esses valores correspondem às tonalidades aplicadas sobre a imagem).
    Apresente em tela os 1600 valores gerados.
 */
    public static void main(String[] args) {
        int[][] imagem = new int[1600][1600];
        int j = 1600;
        for (int i = 0; i < imagem.length; i++) {
            j--;
            int random = (int) (Math.random() * 255);
            imagem[i][0] = random;
            imagem[0][j] = random;
        }
        for (int i = 0; i < 1600; i++) {
            System.out.print("\n" + imagem[i][0] + " - " + imagem[0][j]);
        }
    }
}