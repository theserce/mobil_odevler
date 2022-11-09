import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return ListView(
              children: <Widget>[
                FlutterLogo(
                  size: orientation == Orientation.portrait ? 200.0 : 100.0,
                ),
                SizedBox(
                  height: 100.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Phone"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Sign In"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Sign Up"),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Center(child: Text("Need Help ?"))
              ],
            );
          },
        ),
      ),
    );
  }
}
