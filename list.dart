import 'dart:io';

void main() {
  var listem = [];
  for (int i = 0; i < 10; i++) {
    print("${i + 1}. sayıyı giriniz:");
    int? sayi = int.parse(stdin.readLineSync()!);
    listem.add(sayi);
  }
  print('Oluşturulan Liste: $listem');
  listem.sort((sayi1, sayi2) => sayi1.compareTo(sayi2));
  print('Küçükten büyüğe sıralanışı: $listem');
  listem.sort((sayi1, sayi2) => sayi2.compareTo(sayi1));
  print('Büyükten küçüğe sıralanışı: $listem');
}
