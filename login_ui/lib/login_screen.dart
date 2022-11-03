import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 330,
          decoration: const BoxDecoration(
            color: Color(0xFF03A9F4),
          ),
          child: Center(
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              child: Image.asset(
                "images/omu.png",
                height: 120,
                width: 120,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              height: 50,
              width: 196.2,
              color: const Color(0xFF03A9F4),
              margin: const EdgeInsets.only(),
              alignment: Alignment.bottomLeft,
              child: const Center(
                child: Text(
                  "LOG IN",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 196.2,
              color: const Color(0xFF03A9F4),
              margin: const EdgeInsets.only(),
              alignment: Alignment.bottomRight,
              child: Center(
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                      fontSize: 20, color: Colors.white.withOpacity(0.6)),
                ),
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: 54,
          child: const TextField(
            cursorColor: Color(0xFF03A9F4),
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.grey),
              enabledBorder: UnderlineInputBorder(),
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            color: Colors.grey[10],
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: const TextField(
            cursorColor: Color(0xFF03A9F4),
            decoration: InputDecoration(
              focusColor: Color(0xFF03A9F4),
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.grey),
              enabledBorder: UnderlineInputBorder(),
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              // Write Click Listener Code Here
            },
            child: Text(
              "Forget your password?",
              style: TextStyle(color: Colors.black.withOpacity(0.3)),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // Write Click Listener Code Here.
          },
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: const BoxDecoration(
              color: Color(0xFF03A9F4),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: const Text(
              "LOGIN",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    ));
  }
}
