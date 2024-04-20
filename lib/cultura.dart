import 'package:flutter/material.dart';

void cultura() {
  runApp(const Cultura());
}

class Cultura extends StatelessWidget {
  const Cultura({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar( // Barra no topo do app
        backgroundColor: const Color.fromARGB(255, 212, 16, 2), /// Cor de fundo
      ),
        bottomNavigationBar: BottomNavigationBar( // Barra de navegação ao final da página
        backgroundColor: const Color.fromARGB(255, 212, 16, 2),
        currentIndex: 0, // Aponta pro primeiro item exibido
        iconSize: 24, // Tamanho dos icones
        selectedFontSize: 16, // Fonte selecionada
        unselectedFontSize: 12, // // Fonte não selecionada
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255), // Ícone ativo
        unselectedItemColor: const Color.fromARGB(255, 233, 230, 230), // Ícone desativado
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold), // Negrito
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_rounded),
            label: "Cultura",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_business_rounded),
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
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //Forma de Alinhamento
              children: [
                Text(
                  'Cultura',
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 10, 10, 10),
                  ),
                ),
              ],
            ),
          ),  
        ],
      ),
    );
  }
}