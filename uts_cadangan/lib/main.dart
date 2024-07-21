import 'package:flutter/material.dart';
import 'dart:ui';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil Saya'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.menshairstyles.net/d/1084016-2/Sexy+Latino+men+hairstyles+with+medium+long+hairstyle+with+waves+and+layers.JPG'),
              ),
              title: Text('Sam Morr'),
              subtitle: Text('Email@email.com'),
            ),
            ListTile(
              title: Text('Nama'),
              subtitle: Text('Sam Morr'),
            ),
            ListTile(
              title: Text('Email'),
              subtitle: Text('Email@email.com'),
            ),
            ListTile(
              title: Text('Telepon'),
              subtitle: Text('67859678'),
            ),
            ListTile(
              title: Text('Tanggal Lahir'),
              subtitle: Text('12/12/1989'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: Text('Edit'),
            ),
          ],
        ),
      ),
    );
  }

  RaisedButton(
      {required Null Function() onPressed,
      required Text child,
      required MaterialColor color,
      required Color textColor}) {}
}
