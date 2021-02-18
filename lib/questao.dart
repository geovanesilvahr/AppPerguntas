import 'dart:ui';
import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child:Text(
        texto,
        style: TextStyle(
          fontSize: 28,
          color: Color.fromRGBO(0, 134, 100, 1.0)
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}