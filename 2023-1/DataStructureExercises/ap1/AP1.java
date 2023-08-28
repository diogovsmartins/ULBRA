package org.exercises.ap1;

import java.util.ArrayList;
import java.util.Arrays;

//Uma imagem em preto e branco, com dimensões m x n,
// pode ser descrita por uma matriz onde os elementos
// têm valores 0 ou 1. Seja dada uma matriz 2x3,
// também com valores 0 ou 1, que representa um padrão.
// Escreva um programa que verifique se esse padrão está presente na imagem em preto e branco.
public class AP1 {
    public static void main(String[] args) {
        //Randomly generated matrix and given pattern test
        MatrixService matrixService = new MatrixService();
        Integer[][] matrix = matrixService.generateMatrix(1000, 1000);
        String result = matrixService.checkPattern(matrix, new Integer[][]{{1, 0, 1, 1, 0, 1, 1}, {0, 0, 1, 0, 1, 0, 0}});

        System.out.println(result);

        //test with chosen values and given pattern
        Integer[][] matrixWithChosenValues = new Integer[][]{{1, 0}, {0, 0}};
        String testResult = matrixService.checkPattern(matrixWithChosenValues, new Integer[][]{{1, 0, 0}, {0, 1}});

        System.out.println(testResult);
    }
}

