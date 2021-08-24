void main() {
  String nama = 'Rifqi Seafood';
  int tahun = 2020;
  String pemilik = 'Rifqi Eka Hardianto';
  String alamat = 'Jl. Bhayangkara, Jakarta';
  String telepon = '083807164451';
  bool status = false;
  List<Map> makanan = [
    {'nama': 'Kepiting Rebus', 'harga': 'Rp 40.000'},
    {'nama': 'Nasi Goreng', 'harga': 'Rp 20.000'},
    {'nama': 'Udang Asam Manis', 'harga': 'Rp 50.000'},
    {'nama': 'Sate Cumi', 'harga': 'Rp 30.000'},
  ];
  List<Map> minuman = [
    {'nama': 'Es Jeruk', 'harga': 'Rp 5.000'},
    {'nama': 'Es Kelapa', 'harga': 'Rp 21.000'},
    {'nama': 'Es Teh', 'harga': 'Rp 3.000'},
  ];

  Map dataRestoran = {
    'nama': nama,
    'tahun_berdiri': tahun,
    'pemilik': pemilik,
    'alamat': alamat,
    'telepon': telepon,
    'status_buka': status ? 'Buka' : 'Tutup',
    'daftar_makanan': makanan,
    'daftar_minuman': minuman
  };

  print(dataRestoran);
}
