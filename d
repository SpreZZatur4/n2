import java.util.Scanner;

public class Soal04 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Menerima masukan suku pertama, ratio, dan jumlah suku
        System.out.print("");
        int A = scanner.nextInt();
        System.out.print("");
        int R = scanner.nextInt();
        System.out.print("");
        int N = scanner.nextInt();

        // Menghitung dan menampilkan jumlah deret geometri
        int result = hitungDeretGeometri(A, R, N);
        System.out.println(result);
    }

    // Fungsi rekursif untuk menghitung jumlah deret geometri
    public static int hitungDeretGeometri(int A, int R, int N) {
        if (N == 1) {
            return A;
        } else {
            return A + hitungDeretGeometri(A * R, R, N - 1);
        }
    }
}
