import 'package:flutter/material.dart';
import 'package:form_anim/second.dart';
import 'login.dart';

Route animation(var email, var pass) {
  return PageRouteBuilder(
    transitionDuration: Duration(microseconds: 899999),
    pageBuilder: (context, animation, secondaryAnimation) => MySecond(
      email: email,
      pass: pass,
    ),
    barrierColor: Colors.black,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset(0.0, 0.0);
      const curve = Curves.decelerate;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route animation2() {
  return PageRouteBuilder(
    transitionDuration: Duration(microseconds: 899999),
    pageBuilder: (context, animation, secondaryAnimation) => MyLogin(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}