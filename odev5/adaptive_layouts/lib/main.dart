import 'package:flutter/material.dart';
import 'package:adaptive_layouts/MasterDetailPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serce',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MasterDetailPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
