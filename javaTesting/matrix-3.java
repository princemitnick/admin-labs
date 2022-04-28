import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MatrixTest1 {

    public static void main(String... args){
        //MatrixTest.declareMatrix();
        MatrixTest1.splitString();
    }

    public static void splitString() {

        String input = "1,2,3;4,5,6;7,8,9;4,5,6";

        String [] splitInput = input.split(";");
        //String [] splitByRow = splitInput[0].split(",");
        String [] rowA = splitInput[0].split(",");
        String [] rowB = splitInput[1].split(",");
        String [] rowC = splitInput[2].split(",");
        String [] rowD = splitInput[2].split(",");



        String [][] matrix = {rowA, rowB, rowC, rowD};

        /*for (int i = 0; i< matrix.length; i++){
            for (int j =0; j< matrix.length; j++){
                System.out.println(matrix[i][j]+"\t");
            }
        }*/

        String [][] matrix2 = new String[splitInput.length][rowA.length];
        List<String[]> matrix3 = new ArrayList<>();
        for (int i =0; i < splitInput.length; i++){
            String [] anyRow = splitInput[i].split(",");
            //for (int j = 0; j < rowA.length; j++){
            //System.out.print("\t"+anyRow[j]+"");
                matrix3.add(anyRow);
                matrix2[i] = anyRow;
            //}
            //System.out.println(" : (Row : "+i+")");

        }
        System.out.println();
        System.out.println("Matrix 3 - List");
        for (String [] s: matrix3
             ) {
            System.out.println(Arrays.deepToString(s));
        }

        System.out.println();
        System.out.println("Matrix 2 - Array");

        System.out.println(Arrays.deepToString(matrix2));

        for (int i = 0; i < splitInput.length; i++){
            for (int j = 0; j < rowA.length; j++){
                System.out.print(matrix2[i][j]+" ");
            }
            System.out.println();
        }

    }
}

