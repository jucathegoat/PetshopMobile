import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TelaAvaliacao extends StatelessWidget {
  const TelaAvaliacao({super.key});

  Future<void> enviarAvaliacao(BuildContext context, int nota) async {
    const String url = 'http://10.0.2.2:8080/api/avaliacoes';
    // ^ usa 10.0.2.2 se for emulador Android. Se for dispositivo físico, troca pelo IP da sua máquina.

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'nota': nota}),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Valeu pelo feedback!')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro: ${response.statusCode}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Sem conexão com o servidor')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Avaliação')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => enviarAvaliacao(context, 1),
              child: const Text('1 - Ruim'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => enviarAvaliacao(context, 2),
              child: const Text('2 - Bom'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => enviarAvaliacao(context, 3),
              child: const Text('3 - Excelente'),
            ),
          ],
        ),
      ),
    );
  }
}
