import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_universal/main.dart'; // Necesario para `Image.network`

class Ejemplo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.white,
        middle: Text('Login con Cupertino UI'),
        leading: CupertinoNavigationBarBackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0), // Añadido padding para espacio consistente
        child: Column(
        
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 60),
            Center(
              child: Container(
                width: 200,
                height: 150,
                child: Image.network('https://cdn.icon-icons.com/icons2/3398/PNG/512/flutter_logo_icon_214732.png'),
              ),
            ),
            SizedBox(height: 30), // Añadido espacio entre la imagen y el campo de texto
            CupertinoTextField(
              placeholder: 'Email',
              padding: EdgeInsets.all(16.0), // Padding interno para más espacio
              decoration: BoxDecoration(
                border: Border.all(color: CupertinoColors.systemGreen),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            SizedBox(height: 15),
            CupertinoTextField(
              placeholder: 'Password',
              obscureText: true,
              padding: EdgeInsets.all(16.0), // Padding interno para más espacio
              decoration: BoxDecoration(
                border: Border.all(color: CupertinoColors.systemGreen),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            SizedBox(height: 15),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                // TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: CupertinoColors.activeGreen, fontSize: 15),
              ),
            ),
            SizedBox(height: 30), // Añadido espacio entre el botón de "Forgot Password" y el botón de login
            Container(
              height: 50,
              width: double.infinity, // Ancho completo del contenedor
              decoration: BoxDecoration(
                color: CupertinoColors.activeGreen,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (_) => MainPage()),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: CupertinoColors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 110),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                // TODO CREATE ACCOUNT SCREEN GOES HERE
              },
              child: Text(
                'New User? Create Account',
                style: TextStyle(color: CupertinoColors.activeGreen, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}