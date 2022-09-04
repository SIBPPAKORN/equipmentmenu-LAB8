import 'package:flutter/material.dart';
import './menu.dart';

void main() {
  runApp(const Myappsibpakorn());
}

class Myappsibpakorn extends StatelessWidget {
  const Myappsibpakorn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("equipment menu"),
        ),
        body: menu(),
      ),
    );
  }
}
