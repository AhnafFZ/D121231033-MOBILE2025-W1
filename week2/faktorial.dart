import 'dart:io';

// Fungsi untuk menghitung faktorial dari N (rekursif)
int faktorial(int n) {
  if (n < 0) {
    throw ArgumentError("N harus >= 0");
  }
  if (n == 0 || n == 1) return 1;
  return n * faktorial(n - 1);
}

void main() {
  stdout.write("Masukkan nilai N untuk Faktorial: ");
  int? N = int.tryParse(stdin.readLineSync()!);

  if (N == null || N < 0) {
    print("Input tidak valid. Harus berupa bilangan bulat >= 0.");
    return;
  }

  print("Faktorial dari $N = ${faktorial(N)}");
}
