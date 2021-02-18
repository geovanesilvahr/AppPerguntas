import 'dart:ui';

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 50){
      return 'Parabéns, você não conhece ela!';
    } else if (pontuacao < 80){
      return 'Você é Bom, mas ta quase!';
    } else if (pontuacao < 100){
      return 'Excelente, você é quase um parente!';
    } else {
      return 'Sei que é você Geovane!';
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
          child: Text('Reiniciar?',
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: reiniciarQuestionario,
        )
      ],
    );
  }
}