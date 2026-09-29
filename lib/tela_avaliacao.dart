import 'package:flutter/material.dart';

class TelaAvaliacao extends StatelessWidget {
  const TelaAvaliacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avaliação'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('1 - Ruim'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('2 - Bom'), 
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('3 - Excelente'), 
            ),
          ],
        ),
      ),
    );
  }
}