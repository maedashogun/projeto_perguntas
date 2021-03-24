import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  
  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {

    final List<Map<String,Object>> perguntas = [
      { 
        'texto':'Qual a sua cor favorita?',
        'respostas':['Preto','Vermelho','Verde','Branco'],
      },
      { 
        'texto':'Qual é o seu animal favorito?',
        'respostas':['Coelho','Cobra','Elefante','Leão'],
      },
      {
        'texto':'Qual é o seu instrutor favorito?',
        'respostas':['Maria','João','Leo','Pedro']
      },
    ];

    List<Widget> respostas = [];

    for(var textoResp in perguntas[_perguntaSelecionada]['respostas']) {
      respostas.add(Resposta(textoResp,_responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...respostas,
          ],
        ),
      ),
    );
  }

}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {  
    return _PerguntaAppState();
  }
}