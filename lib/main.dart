import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar( // Barra no topo do app
        title: const Text('Home'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        ),

        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/img/background.png', // Imagem de fundo
              fit: BoxFit.cover,
            ),

            Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //Forma de Alinhamento
                children: [
                  Text(
                    'SAMPA-LEE',
                    style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 10, 10, 10),
                    ),
                  ),
                  
                  Text(
                    'A CULTURA QUE VOCÊ PROCURA',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 10, 10, 10),
                    ),
                  ),

                  Image.asset(
                    'assets/img/logolee.png', // Caminho da Logo
                    height: 300.0, // Altura da imagem
                    width: 300.0, // Largura da imagem
                  ),

                   ElevatedButton(
                    onPressed: () {
                      // Ações do botão aqui
                    },

                    child: Text(
                      'LOCALIZAÇÃO',
                      style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 10, 10, 10),
                      ),
                    ),
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
