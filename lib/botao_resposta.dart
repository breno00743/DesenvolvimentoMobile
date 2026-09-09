import 'package:flutter/material.dart';

class BotaoReposta extends StatelessWidget {
  const BotaoReposta({
    super.key,
    required this.textoResposta,
    required this.callResposta, // nomeada
    required this.cor,
  });

  final String textoResposta;
  final void Function() callResposta;
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: cor,
        foregroundColor: Colors.white,
      ),
      onPressed: callResposta,
      child: Text(textoResposta),
    );
  }
}
