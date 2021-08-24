void main() {
  // Keliling
  int sisi = 10;
  int keliling = kelilingPersegi(sisi);
  print(keliling);

  // Luas Lingkaran
  int jari2 = 14;
  double luasLingkaran = 3.14 * jari2 * jari2;
  print(luasLingkaran);

  // Volume Balok
  int panjang = 6;
  int lebar = 8;
  int tinggi = 10;
  int volume = panjang * lebar * tinggi;
  print(volume);
}

int kelilingPersegi(int sisi) {
  return sisi * 4;
}
