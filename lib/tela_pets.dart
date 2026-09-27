import 'package:flutter/material.dart';

class TelaPets extends StatelessWidget{
  const TelaPets({super.key});

@override

Widget build(BuildContext context){
  return Scaffold(
      appBar: AppBar(
        title: const Text('Meus pets'),
        backgroundColor: Color.fromARGB(255, 249, 243, 243),
        foregroundColor: Colors.black,
      ),
      body: const Center(
        child: Text('Não há nenhum pet cadastrado')
      ),
    );
  }
}