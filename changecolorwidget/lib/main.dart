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

class ColorChangeWidget extends StatefulWidget {
  @override
  _ColorChangeWidgetState createState() => _ColorChangeWidgetState();
}

class _ColorChangeWidgetState extends State<ColorChangeWidget> {
  // Lista de colores
  List<Color> colors = [Colors.blue, Colors.red, Colors.orange, Colors.limeAccent];
  
  int colorIndex = 0;

  // Método para cambiar el color al tocarlo.
  void changeColor() {
    setState(() {
      // Incrementa el índice del color actual
      colorIndex = (colorIndex + 1) % colors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: changeColor,
      child: Container(
        width: 200,
        height: 200,
        color: colors[colorIndex], // Color actual del contenedor
        child: Center(
          child: Text(
            'Cambia de Color',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
