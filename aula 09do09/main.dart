import 'package:flutter/material.dart';
import 'package:flutter_application_2/questoes.dart';

import 'janela1.dart';
import 'janela2.dart';

void main() {
  runApp(
    const Controle(),
  );
}

class Controle extends StatefulWidget {
  const Controle({super.key});

  @override
  State<Controle> createState() => _ControleState();
}

class _ControleState extends State<Controle> {
  var controle = 0;

  void muda() {
    setState(() {
      controle = 1;
    });
  }

  void responder(int numero) {
    setState(() {
      controle++;

      if (controle > questoes.length) {
        controle = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget atual;

    if (controle == 0) {
      atual = Janela1(muda);
    } else {
      atual = Janela2(
        perguntaSelecionada: controle - 1,
        quandoResponder: responder,
      );
    }

    return MaterialApp(
      home: atual,
    );
  }
}
