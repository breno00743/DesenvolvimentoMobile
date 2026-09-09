import 'package:flutter/material.dart';
import 'package:flutter_application_2/questoes.dart';

import 'botao_resposta.dart';

class Janela2 extends StatelessWidget {
  // Alterado para receber o índice da pergunta e a função de resposta
  const Janela2({
    super.key,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  });

  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  @override
  Widget build(BuildContext context) {
    var teste1 = questoes[perguntaSelecionada];

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Opacity(
              opacity: 0.8,
              child: Image.asset(
                'assets/imagens/palhaco_ouve.png',
              ),
            ),
          ),
          Text(teste1.texto),
          const SizedBox(
            height: 10,
          ),
          ...teste1.Embaralha().map((item) {
            return BotaoReposta(
              cor: const Color.fromARGB(255, 224, 55, 47),
              callResposta: () {
                print('Acertou!');
                print('Item: $item');

                quandoResponder(perguntaSelecionada);
              },
              textoResposta: item,
            );
          }),
        ],
      ),
    );
  }
}
