# Program Angka Biner (Konversi Bilangan Bulat ke Biner)

# Menerima input dari user
angka = int(input("Masukkan bilangan bulat (>= 0): "))

# Validasi input
if angka < 0:
    print("Input tidak valid! Masukkan bilangan >= 0.")
else:
    # Konversi ke biner (tanpa prefix '0b')
    biner = bin(angka)[2:]
    print(f"Bilangan {angka} dalam biner adalah: {biner}")