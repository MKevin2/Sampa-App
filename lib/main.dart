import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar( // Barra no topo do app
        title: const Text('Home'),
        backgroundColor: const Color.fromARGB(255, 255, 28, 12),
        foregroundColor: Colors.white,
        ),

        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 28, 12),
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.hiking_sharp),
            label: "Cultura",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_rounded),
            label: "Culinária",
          ),
        ],
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
                  const Text(
                    'SAMPA-LEE',
                      style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 10, 10, 10),
                    ),
                  ),
                  
                  const Text(
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

                    child: const Text(
                      'LOCALIZAÇÃO',
                      style: TextStyle(
                      fontSize: 28,
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