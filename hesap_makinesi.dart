import 'dart:io';

void main() {
  double n1, n2;
  int secim;
  var message1 = '''

             ---------------------------
             |      HESAP MAKİNESİ     |
           -------------------------------
           | Yapacağınız İşlemi Seçiniz: |
           |                             |
           |          1.Toplama          |
           |          2.Çıkarma          |
           |          3.Çarpma           |     
           |          4.Bölme            |
           |          5.ÇIKIŞ            |
           -------------------------------  
''';
  stdout.write('$message1\t   => ');
  secim = int.parse(stdin.readLineSync()!);
  if (secim == 1) {
    stdout.write('\n\t   İlk sayıyı giriniz : ');
    n1 = double.parse(stdin.readLineSync()!);
    stdout.write('\t   İkinci sayıyı giriniz : ');
    n2 = double.parse(stdin.readLineSync()!);
    print('\t   Sonuç: ${n1 + n2}');
    stdout.write('\n\t   Başka işlem yapmak istiyor musunuz? E/H : ');
    String? devam = stdin.readLineSync();
    if (devam == 'E') {
      return main();
    } else {
      exit(0);
    }
  } else if (secim == 2) {
    stdout.write('\n\t   İlk sayıyı giriniz : ');
    n1 = double.parse(stdin.readLineSync()!);
    stdout.write('\t   İkinci sayıyı giriniz : ');
    n2 = double.parse(stdin.readLineSync()!);
    print('\t   Sonuç: ${n1 - n2}');
    stdout.write('\n\t   Başka işlem yapmak istiyor musunuz? E/H : ');
    String? devam = stdin.readLineSync();
    if (devam == 'E') {
      return main();
    } else {
      exit(0);
    }
  } else if (secim == 3) {
    stdout.write('\n\t   İlk sayıyı giriniz : ');
    n1 = double.parse(stdin.readLineSync()!);
    stdout.write('\t   İkinci sayıyı giriniz : ');
    n2 = double.parse(stdin.readLineSync()!);
    print('\t   Sonuç: ${n1 * n2}');
    stdout.write('\n\t   Başka işlem yapmak istiyor musunuz? E/H : ');
    String? devam = stdin.readLineSync();
    if (devam == 'E') {
      return main();
    } else {
      exit(0);
    }
  } else if (secim == 4) {
    stdout.write('\n\t   İlk sayıyı giriniz : ');
    n1 = double.parse(stdin.readLineSync()!);
    stdout.write('\t   İkinci sayıyı giriniz : ');
    n2 = double.parse(stdin.readLineSync()!);
    print('\t   Sonuç: ${n1 / n2}');
    stdout.write('\n\t   Başka işlem yapmak istiyor musunuz? E/H : ');
    String? devam = stdin.readLineSync();
    if (devam == 'E') {
      return main();
    } else {
      exit(0);
    }
  } else if (secim == 5) {
    exit(0);
  } else {
    print('\t   Geçersiz');
  }
}
