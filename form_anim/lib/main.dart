import 'package:flutter/material.dart';
import 'package:form_anim/login.dart';
import 'package:form_anim/second.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (context) => const MyLogin(),
          'second': (context) => MySecond(),
        }),
  );
}