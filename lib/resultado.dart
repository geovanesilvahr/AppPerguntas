import 'dart:ui';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao == 10){
      return 'Pontos: 10';
    } else if (pontuacao == 20){
      return 'Pontos: 20';
    } else if (pontuacao == 30){
      return 'Você é um panda? Acertou todas!';
    } else {
      return 'Pontos: 0';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
            )
          ),
        ),
        FlatButton(
          child: Text('Reiniciar',
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.black,
          textColor: Colors.white,
          onPressed: reiniciarQuestionario,
        )
      ],

    );
  }
}