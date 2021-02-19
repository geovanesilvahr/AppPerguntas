import './questionario.dart';
import 'package:flutter/material.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{

  var _pontuacaoTotal = 0;
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Quais são as cores dos Pandas?',
      'respostas': [
        {'texto': 'Vermelho e Roxo', 'nota': 0},
        {'texto': 'Azul e Amarelo', 'nota': 0},
        {'texto': 'Roxo e Preto', 'nota': 0},
        {'texto': 'Preto e Branco', 'nota': 10},
      ],
    }, {
      'texto': 'Qual é a comida deles?',
      'respostas': [
        {'texto': 'Bambu', 'nota': 10},
        {'texto': 'Tomate', 'nota': 0},
        {'texto': 'Coxinha', 'nota': 0},
        {'texto': 'Carne', 'nota': 0},
      ],
    }, {
      'texto': 'O que eles gostam de fazer?',
      'respostas': [
        {'texto': 'Correr', 'nota': 0},
        {'texto': 'Brincar', 'nota': 10},
        {'texto': 'Fazer Barulho', 'nota': 0},
        {'texto': 'Dançar', 'nota': 0},
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
          title: Text('Você sabe sobre Pandas?'),
          backgroundColor: Colors.black,
          centerTitle: true,
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