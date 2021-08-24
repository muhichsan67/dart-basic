void main() {
  List<String> mahasiswa = ['Muhammad', 'Ichsan', 'Fathurrochman'];
  print(mahasiswa);
  print(mahasiswa.elementAt(1));

  // Menambah list baru dengan sebuah nilai
  mahasiswa.add('Annisa');
  // Soring list
  mahasiswa.sort();
  print(mahasiswa);

  // Reversed List
  var mahasiswaBaru = mahasiswa.reversed.toList();
  print(mahasiswaBaru);
  // Menghapus List
  mahasiswa.clear();

  Map<String, dynamic> mahasiswa1 = {
    'nama': 'Ichsan',
    'nim': 14045,
    'umur': 22
  };
  print(mahasiswa1);
  print(mahasiswa1['nama']);
}
