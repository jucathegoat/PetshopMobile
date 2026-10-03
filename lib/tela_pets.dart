import 'package:flutter/material.dart';
import 'package:flutter_application_1/tela_cadastro_pet.dart';

class TelaPets extends StatefulWidget {
  const TelaPets({super.key});

  @override
  State<TelaPets> createState() => _TelaPetsState();
}

class _TelaPetsState extends State<TelaPets> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Meus pets'),
        backgroundColor: Color.fromARGB(255, 249, 243, 243),
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Text('Não há nenhum pet cadastrado', textAlign: TextAlign.center),
          ],
        ),
      ),
            floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TelaCadastroPet(),
            ),
          );
        },
        shape: CircleBorder(
          side: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}