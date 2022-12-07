import 'package:flutter/material.dart';
import 'animation.dart';

class MySecond extends StatefulWidget {
  var email;
  var pass;
  MySecond({this.email, this.pass});

  @override
  _MySecondState createState() => _MySecondState();
}

class _MySecondState extends State<MySecond> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/second.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(children: [
            const Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Text(
                  "ACCOUNT INFO",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 33,
                    foreground: Paint()
                      ..shader = const LinearGradient(
                        colors: <Color>[
                          Colors.white10,
                          Colors.white12,
                          Colors.white24,
                          Colors.white30,
                          Colors.white38,
                          Colors.white54,
                          Colors.white60,
                          Colors.white70,
                        ],
                      ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                    hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    hintText: ("  Email : " + widget.email)),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                    hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    hintText: ("  Password : " + widget.pass)),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: TextButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, 'login');
                    Navigator.of(context).push(animation2());
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
