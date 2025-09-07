import 'dart:io';

// Fungsi untuk mengubah bilangan bulat ke string biner
String toBinary(int n) {
  if (n < 0) {
    throw ArgumentError("N harus >= 0");
  }
  return n.toRadixString(2); // konversi ke biner
}

void main() {
  stdout.write("Masukkan bilangan bulat: ");
  int? N = int.tryParse(stdin.readLineSync()!);

  if (N == null || N < 0) {
    print("Input tidak valid. Harus berupa bilangan bulat >= 0.");
    return;
  }

  print("Bentuk biner dari $N = ${toBinary(N)}");
}
