import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int numeroSorteado = Random().nextInt(5) + 1;
  String textofinal = '';

  void verificar(int numero) {
    setState(() {
      if (numero == numeroSorteado) {
        textofinal = 'Acertou!';
      } else {
        textofinal = 'Errou! O número era $numeroSorteado';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Escolha um número de 1 a 5',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => verificar(1),
                    child: const Text('1'),
                  ),
                  TextButton(
                    onPressed: () => verificar(2),
                    child: const Text('2'),
                  ),
                  TextButton(
                    onPressed: () => verificar(3),
                    child: const Text('3'),
                  ),
                  TextButton(
                    onPressed: () => verificar(4),
                    child: const Text('4'),
                  ),
                  TextButton(
                    onPressed: () => verificar(5),
                    child: const Text('5'),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Text(
                textofinal,
                style: const TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
