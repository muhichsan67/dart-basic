void main() {
  RekeningBank rekeningBank = new RekeningBank(
      saldo: 500000,
      namaPemilik: 'Muhammad Ichsan Fathurrochman',
      namaBank: 'Mandiri');
  rekeningBank.cekSaldo();

  // Penggunaan Getter & Setter
  print("----------------------------");
  RekeningBank rekeningIchsan =
      new RekeningBank(saldo: 7500000, namaPemilik: 'Ahmad', namaBank: 'BCA');

  print(rekeningIchsan.saldo);
  rekeningIchsan.setSaldo = 50000000;
  print(rekeningIchsan.saldo);
}

class RekeningBank {
  String namaPemilik = '';
  String namaBank = '';
  int saldo = 0;
  // Setter
  void set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  int get getSaldo {
    return saldo;
  }

  // Construct
  RekeningBank(
      {required this.saldo, required this.namaPemilik, required this.namaBank});

  cekSaldo() {
    print('cek saldo saat ini : ${saldo}');
  }

  transfer() {
    print('transfer');
  }

  ambilSaldo() {
    print('ambil saldo');
  }
}
