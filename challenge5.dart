void main() {
  eWallet dompetIchsan = new eWallet();
  dompetIchsan.setNamaPemilik = 'Muhammad Ichsan Fathurrochman';
  dompetIchsan.setSaldo = 5000000;
  dompetIchsan.setMutasi = [
    {'tanggal': '20-08-2021', 'total': 50000, 'status': 'Sukses'},
    {'tanggal': '21-08-2021', 'total': 70000, 'status': 'Gagal'},
  ];

  print("==== DETAIL eWallet ====");
  print("Nama : ${dompetIchsan.getNamaPemilik}");
  print("Saldo Awal : ${dompetIchsan.getSaldo}");
  print("Mutasi : ${dompetIchsan.getMutasi}");

  print("===========");
  print("Melakukan transfer sebesar 2000000");
  dompetIchsan.transfer(2000000);
  print("Melakukan request sebesar 1000000");
  dompetIchsan.request(1000000);
}

class eWallet {
  String namaPemilik = '';
  int saldo = 0;
  List<Map> mutasi = [];

  set setNamaPemilik(String namaPemilikBaru) {
    this.namaPemilik = namaPemilikBaru;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  set setMutasi(List<Map> mutasiBaru) {
    this.mutasi = mutasiBaru;
  }

  String get getNamaPemilik {
    return namaPemilik;
  }

  int get getSaldo {
    return saldo;
  }

  List<Map> get getMutasi {
    return mutasi;
  }

  transfer(int totalTransfer) {
    this.saldo -= totalTransfer;
    this.mutasi.add(
        {'tanggal': '24-08-2021', 'total': totalTransfer, 'status': 'Sukses'});
    print('Transfer berhasil, saldo anda sekarang adalah ${this.saldo}');
    print('Mutasi anda sekarang : ${this.mutasi}');
  }

  request(int totalRequest) {
    this.saldo += totalRequest;
    this.mutasi.add(
        {'tanggal': '24-08-2021', 'total': totalRequest, 'status': 'Sukses'});
    print('Request berhasil, saldo anda sekarang adalah ${this.saldo}');
    print('Mutasi anda sekarang : ${this.mutasi}');
  }
}
