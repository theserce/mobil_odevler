import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Şahinkaya Kanyonu Tabiat Parkı',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Samsun / Vezirköprü / Türkmen',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const FavoriteWidget(),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'ARA'),
          _buildButtonColumn(color, Icons.near_me, 'YOL TARİFİ'),
          _buildButtonColumn(color, Icons.share, 'PAYLAŞ'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        '2015 yılında tescil edilen Şahinkaya Kanyonu Tabiat Parkı, '
        'Samsun il merkezine 125 km, '
        'Vezirköprü ilçe merkezine ise 17 km mesafededir. '
        'Alana ulaşım asfalt yol ile sağlanmaktadır. '
        'Tabiat Parkı içerisinde ziyaretçilerin kullanımına yönelik kameriye, '
        'piknik masaları ve yürüyüş yolları bulunmaktadır. '
        'Kanyon ve çevresi; tekne turu, kano, kampçılık, piknik, '
        'doğa yürüyüşü, bitki ve yaban hayatı gözlemi, doğa fotoğrafçılığı '
        've amatör balıkçılık faaliyetlerinin yapılmasına elverişlidir. '
        'Şahinkaya Kanyonu, Altınkaya Baraj Gölü’nü doğal bir görünüm ile '
        'ikiye ayıran eşine az rastlanan bir kanyon özelliğindedir. '
        'Dar ve kıvrımlı kanyon içerisinde tekne turu ile ilerlerken '
        'gökyüzünü, kayalara tutunmuş kızılçam, zeytin ve sandal ağaçlarının '
        'arasından büyülü bir halde görebilirsiniz. Kanyonda '
        'kireçtaşı ana kayalarından oluşan doğal mağaralar '
        'alanın diğer kaynak değerlerindendir.',
        softWrap: true,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );

    return MaterialApp(
      title: 'Flutter Layout',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: const Text('Şahinkaya Kanyonu Tabiat Parkı'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/sahinkaya.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 55;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
} /*crossAxisAlignment özelliğinin CrossAxisAlignment.start olarak ayarlanması, sütunu satırın başlangıcında konumlandırır.*/
