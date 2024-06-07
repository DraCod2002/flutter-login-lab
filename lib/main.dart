import 'package:flutter/material.dart';
import 'package:lab_universal/pages/Ejemplo1.dart';
import 'package:lab_universal/pages/Ejemplo2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplos Login Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ejemplo1()),
                );
              },
              child: Text('Ejemplo 1'),
            ),
             SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ejemplo2()),
                );
              },
              child: Text('Ejemplo 2'),
            ),
          ],
        ),
      ),
    );
  }
}