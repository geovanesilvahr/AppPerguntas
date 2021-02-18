import './questionario.dart';
import 'package:flutter/material.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{

  var _pontuacaoTotal = 0;
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a cor preferida da Panda?',
      'respostas': [
        {'texto': 'Vermelho', 'nota': 10},
        {'texto': 'Azul', 'nota': 5},
        {'texto': 'Roxo', 'nota': 50},
        {'texto': 'Preto', 'nota': 30},
      ],
    }, {
      'texto': 'Qual é a comida da panda?',
      'respostas': [
        {'texto': 'Bambu', 'nota': 10},
        {'texto': 'Cenoura', 'nota': 5},
        {'texto': 'Coxinha', 'nota': 50},
        {'texto': 'Lasanha', 'nota': 30},
      ],
    }, {
      'texto': 'Qual é o nome da Panda?',
      'respostas': [
        {'texto': 'Thaisinha', 'nota': 10},
        {'texto': 'Panda Rosa', 'nota': 5},
        {'texto': 'Thata', 'nota': 50},
        {'texto': 'Thaise', 'nota': 30},
      ],
    }

  ];

  void _responder(int pontuacao){
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
    print(_pontuacaoTotal);
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get _temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Você Conhece a Panda?'),
        ),
        
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: _temPerguntaSelecionada 
          ? Questionario(perguntas: _perguntas,
            perguntaSelecionada: _perguntaSelecionada,
            quandoResponder: _responder
          ) 
          : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState(){
    return _PerguntaAppState();
  
  }
}