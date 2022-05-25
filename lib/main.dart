import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

main() => runApp(const PerguntaAPP());

class _PerguntasAppState extends State<PerguntaAPP> {
  var _perguntaSelecionada = 0;
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
      print(_perguntaSelecionada);
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map> perguntas = [
      {
        'texto': 'Qual é a sua linguagem de programação preferida?',
        'respostas': ['Dart', 'JavaScript', 'Java', 'C#'],
      },
      {
        'texto': 'Qual é o seu framework preferido?',
        'respostas': ['Flutter', 'Vue', 'Spring', 'Asp.Net'],
      },
      {
        'texto': 'País em que gostaria de trabalhar?',
        'respostas': ['Portugal', 'Estônia', 'Suécia', 'Dublin'],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(children: <Widget>[
          Questao(perguntas[_perguntaSelecionada]['texto']),
          Resposta('Resposta 1', _responder),
          Resposta('Resposta 2', _responder),
          Resposta('Resposta 3', _responder),
        ]),
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: const Color.fromARGB(19, 129, 60, 240)),
    );
  }
}

class PerguntaAPP extends StatefulWidget {
  @override
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }

  const PerguntaAPP({Key? key}) : super(key: key);
}
