import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  
  var perguntaSelecionada = 0;

  void responder(){
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {

    final List<String> perguntas = [
      'Qual a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual é o seu nome?',
      'Qual é o seu trabalho?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]),
            Questao('Resposta 1'),
            Questao('Resposta 2'),
            Questao('Resposta 3'),
          ],
        ),
      ),
    );
  }

}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {  
    return PerguntaAppState();
  }
}