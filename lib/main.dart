import 'package:flutter/material.dart';
import 'tela_agendamento.dart';
import 'loja.dart';
import 'tela_pets.dart';
import 'notificacoes.dart';
import 'tela_login.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const TelaLogin(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 252, 243),
      appBar: AppBar(
        title: Text(
          "Pet Shop Fila Zero",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 249, 243, 243),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 249, 243, 243),
        elevation: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: const Color.fromARGB(255, 194, 194, 194),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: const Color.fromARGB(255, 194, 194, 194),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context) => const TelaLoja(),
                  )
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.calendar_month,
                color: const Color.fromARGB(255, 194, 194, 194),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context) => const TelaAgendamento(),
                  )
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.pets,
                color: const Color.fromARGB(255, 194, 194, 194),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>TelaPets()
                ),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        width: 600,
        height: 370,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Olá João, seja bem-vindo!",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(width: 63),
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: const Color.fromARGB(255, 194, 194, 194),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Notificacoes())
                    );
                  },
                ),
              ],
            ),
            Text(
              "O que deseja fazer hoje?",
              style: TextStyle(
                fontSize: 15,
                color: const Color.fromARGB(255, 216, 216, 216),
              ),
            ),
            SizedBox(height: 25),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width - 20,
                maxHeight: 250,
              ),
              child: CarouselView(
                itemExtent: 350,
                backgroundColor: Colors.blueGrey,
                children: [
                  Image.asset(
                    "assets/images/banner1.png",
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/banner2.png",
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/banner3.png",
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/banner4.png",
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/banner5.png",
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/banner6.png",
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/banner7.png",
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/banner8.png",
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/banner9.png",
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
