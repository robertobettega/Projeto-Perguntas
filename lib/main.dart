import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    perguntaSelecionada++;
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final pergunta = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Perguntas'),
          ),
          body: Column(
            children: [
              Text(pergunta[perguntaSelecionada]),
              ElevatedButton(
                child: Text('Resposta 1'),
                onPressed: responder,
              ),
              ElevatedButton(
                child: Text('Resposta 2'),
                onPressed: responder,
              ),
              ElevatedButton(
                child: Text('Resposta 3'),
                onPressed: responder,
              ),
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
