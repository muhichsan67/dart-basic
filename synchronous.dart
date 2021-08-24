Future<void> main() async {
  // Proses Synchronous
  print("---- SYNCHRONOUS DATA ----");
  fetchData();
  print('data telah di print');
  print("---- ASYNCHRONOUS DATA with AWAIT ----");
  print(await printData());
  print("data telah selesai di proses");
}

void fetchData() {
  print('fetch data');
}

Future<String> printData() async {
  try {
    var data = await fetchDataAsync();
    return 'data: $data';
  } catch (err) {
    return '$err';
  }
}

Future<String> fetchDataAsync() {
  return Future.delayed(
      Duration(seconds: 2), () => throw ('data gagal diproses'));
}
