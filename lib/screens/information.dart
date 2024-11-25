import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About the App'),
      ),
      body: const Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              'Grupo PsyMushrooms',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'A aplicação PSY MUSHROOMS foi criada para compartilhar informações sobre cogumelos de diferentes tipos e usabilidades. Além de proporcionar a comercialização desses produtos naturais.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

            Text(
              'Membros do Grupo:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '1. Thiago Carvalho Boquinha\n2. Samuel Loureiro Joga Come Dorme',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
