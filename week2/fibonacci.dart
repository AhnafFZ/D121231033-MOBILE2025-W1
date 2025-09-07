import 'dart:io';

// Fungsi untuk menghitung Fibonacci ke-N (rekursif)
int fibonacci(int n) {
  if (n < 0) {
    throw ArgumentError("N harus >= 0");
  }
  if (n == 0) return 0;
  if (n == 1) return 1;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  stdout.write("Masukkan nilai N untuk Fibonacci: ");
  int? N = int.tryParse(stdin.readLineSync()!);

  if (N == null || N < 0) {
    print("Input tidak valid. Harus berupa bilangan bulat >= 0.");
    return;
  }

  print("Fibonacci ke-$N = ${fibonacci(N)}");
}