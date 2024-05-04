import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Change Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Color Change Widget',
            style: TextStyle(fontWeight: FontWeight.bold), //Hacer la letra mas gorda
          ),
          centerTitle: true,
        ),
        body: Center(
       
        ),
      ),
    );
  }
}

