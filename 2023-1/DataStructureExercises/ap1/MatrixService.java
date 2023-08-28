package org.exercises.ap1;

import java.util.Objects;

public class MatrixService {

   
    public Integer[][] generateMatrix(final Integer numberOfRows, final Integer numberOfColumns) {
            if (numberOfRows == null || numberOfColumns == null || numberOfRows<=0 || numberOfColumns<=0) {
                throw new IllegalArgumentException("numberOfRows and numberOfColumns must not be null or lesser than 0 ");
            }
           final Integer[][] matrix = new Integer[numberOfRows][numberOfColumns];
            for (int i = 0; i < numberOfRows; i++) {
                for (int j = 0; j < numberOfColumns; j++)  {
                    matrix[i][j] = (int) (Math.random() * 2);
                }
            }
            return matrix;
        }

        public String checkPattern(final Integer[][] matrix, final Integer[][] pattern) {
            if (matrix == null || pattern == null) {
                throw new IllegalArgumentException("given matrix and pattern must not be null");
            }
            int matrixLength = matrix.length;
            int matrixColumns = matrix[0].length;
            int patternLength = pattern.length;
            int patternColumns = pattern[0].length;
            var findStart=System.currentTimeMillis();
            for (int i = 0; i < matrixLength - patternLength + 1; i++) {
                for (int j = 0; j < matrixColumns - patternColumns + 1; j++) {
                    if (Objects.equals(matrix[i][j], pattern[0][0])) {
                        boolean isPattern = true;
                        for (int k = 0; k < patternLength; k++) {
                            for (int l = 0; l < patternColumns; l++) {
                                if (!Objects.equals(matrix[i + k][j + l], pattern[k][l])) {
                                    isPattern = false;
                                    break;
                                }
                            }
                        }
                        if (isPattern) {
                            var findEnd=System.currentTimeMillis();
                            var findTime=findEnd-findStart;
                            return String.format("Pattern was found %s miliseconds", findTime);
                        }
                    }
                }
            }
            var findEnd=System.currentTimeMillis();
            var findTime=findEnd-findStart;
            return String.format("Pattern was not found, elapsed time %s miliseconds", findTime);
        }
}
