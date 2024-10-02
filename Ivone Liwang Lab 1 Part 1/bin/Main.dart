import 'dart:io';
import 'dart:math';
import 'PrintTriangle.dart';

void main() {
  Random random = Random();
  print("masukkan jumlah angka:");
  int? jumlahAngka = int.parse(stdin.readLineSync()!);
  List<int> listAngka = List<int>.generate(jumlahAngka, (i) => random.nextInt(10));
  print("angka:$listAngka");
  print("jenis pengurutan");
  print("1. bubble sort\n"
      "2. inversi\n"
      "3. suffle\n"
      "pilihan anda:");
  int? jenisPengurutan = int.parse(stdin.readLineSync()!);
  switch (jenisPengurutan) {
    case 1:
      bubbleSort(listAngka);
    case 2:
      listAngka = List.from(listAngka.reversed);
    case 3:
      listAngka.shuffle();
  }
  printTrianglePattern(listAngka);
}

void bubbleSort(List<int> listAngka) {
  int n = listAngka.length;
  
  for (int i = 0; i < n - 1; i++) {
    // Flag untuk mendeteksi apakah ada pertukaran
    bool swapped = false;
    
    // Looping membandingkan elemen yang bersebelahan
    for (int j = 0; j < n - i - 1; j++) {
      if (listAngka[j] > listAngka[j + 1]) {
        // Tukar posisi jika elemen saat ini lebih besar dari elemen berikutnya
        int temp = listAngka[j];
        listAngka[j] = listAngka[j + 1];
        listAngka[j + 1] = temp;
        
        swapped = true; // Set flag menjadi true jika ada pertukaran
      }
    }
    
    // Jika tidak ada pertukaran, keluar dari loop karena list sudah terurut
    if (!swapped) break;
  }
}