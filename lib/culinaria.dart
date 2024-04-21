import 'package:flutter/material.dart';
import 'package:sampalee/cultura.dart';
import 'package:sampalee/main.dart';

void culinaria() {
  runApp(const Culinaria());
}

class Culinaria extends StatelessWidget {
  const Culinaria({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar( // Barra no topo do app
        title: const Text('Culinária - Seus Restaurantes'),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 212, 16, 2), /// Cor de fundo
      ),

        bottomNavigationBar: BottomNavigationBar( // Barra de navegação ao final da página
        backgroundColor: const Color.fromARGB(255, 212, 16, 2),
        currentIndex: 2, // Aponta pro item exibido, nesse caso, o item em destaque será o terceiro, lembrando que a contagem inicia no 0
        iconSize: 24, // Tamanho dos icones
        selectedFontSize: 16, // Fonte selecionada
        unselectedFontSize: 12, // // Fonte não selecionada
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255), // Ícone ativo
        unselectedItemColor: const Color.fromARGB(255, 233, 230, 230), // Ícone desativado
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold), // Negrito
        onTap: (int index) {
          // Código para execução da troca de tela
          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Cultura())); // Caminho pra tela "Cultura"
            break;
            
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage())); // Caminho pra tela "Home"
            break;
            
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Culinaria())); // Caminho pra tela "Culinária"
            break;
              default:
            break;
          }
          },
        items: const [
          BottomNavigationBarItem( // Botão de navegação da cultura
            icon: Icon(Icons.account_balance_rounded),
            label: "Cultura",
          ),
          BottomNavigationBarItem( // Botão de navegação da home
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem( // Botão de navegação da culinária
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

          Center(
            child: ListView(
              padding: const EdgeInsets.all(50.0),
                children: const <Widget>[
                Text(
                  "RESTAURANTE TAKO",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red, // Código para sublinhar
                      decorationThickness: 1, // Definir tamanho da espessura
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 10, 10, 10),
                  ),
                ),

                Text(
                  'RODÍZIO: SASHIMIS DE ATUM, SALMÃO E PEIXE BRANCO, YAKISOBA E TEMAKI\n',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color:   Color.fromARGB(255, 212, 16, 2),
                  ),
                ),

                Text(
                  "RESTAURANTE MUGUI",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red, // Cor do sublinhado
                    decorationThickness: 1, // Espessura do sublinhado
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 10, 10, 10),
                  ),
                ),
                  
                Text(
                  "PRATOS QUENTES: UDON GYOZAS, TEMPURÁ, SOBÁ LÁMEN, MISSOHIRO",
                  textAlign: TextAlign.justify,
                  style: TextStyle( 
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color:   Color.fromARGB(255, 212, 16, 2),
                  ),
                ),

                Text(
                  "RESTAURANTE TAMPOPO",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red, // Cor do sublinhado
                    decorationThickness: 1, // Espessura do sublinhado
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 10, 10, 10),
                  ),
                ),

                Text(
                  "PANQUECAS FRITAS: BACON, FRANGO E CARNE DE PORCO FEITOS DE TEMPURÁ E MOLHO",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color:   Color.fromARGB(255, 212, 16, 2),
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