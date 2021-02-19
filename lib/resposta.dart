import 'package:flutter/material.dart';

class Resposta extends StatelessWidget{
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.black,
        child: Text(texto),
        onPressed: quandoSelecionado,
      ), 
    );
  }



}