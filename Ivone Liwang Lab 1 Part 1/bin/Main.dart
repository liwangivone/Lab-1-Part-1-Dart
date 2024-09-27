import 'dart:io';
import 'dart:math';
import 'package:algorithmic/algorithmic.dart';
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