import 'package:flutter/material.dart';
import 'package:sampalee/cultura.dart';
import 'package:sampalee/culinaria.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

 @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar( // Barra no topo do app
          backgroundColor: const Color.fromARGB(255, 212, 16, 2), /// Cor de fundo
        ),

        bottomNavigationBar: BottomNavigationBar( // Barra de navegação ao final da página
          backgroundColor: const Color.fromARGB(255, 212, 16, 2),
          currentIndex: 1, // Aponta pro item exibido, nesse caso, o item em destaque será o segundo, lembrando que a contagem inicia no 0
          iconSize: 24, // Tamanho dos icones
          selectedFontSize: 16, // Fonte selecionada
          unselectedFontSize: 12, // // Fonte não selecionada
          selectedItemColor: const Color.fromARGB(255, 255, 255, 255), // Ícone ativo
          unselectedItemColor: const Color.fromARGB(255, 233, 230, 230), // Ícone desativado
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold), // Negrito
          onTap: (int index) {
          setState(() {
          });
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

              BottomNavigationBarItem( // Botão de navegação home
                icon: Icon(Icons.home_rounded),
                label: "Home",
              ),

              BottomNavigationBarItem( // Botão de navegação da culinária
                icon: Icon(Icons.add_business_rounded),
                label: "Culinária",
              ),
            ],
        ), 
      
        
        body: Stack( // Empilha widgets dentro do body como filhos
          fit: StackFit.expand, // Define a proporção dos filhos
            children: [
              Image.asset( 
                'assets/img/background.png', // Caminho da imagem de fundo
                fit: BoxFit.cover, //Expande imagem por todo o espaço disponível
              ),

              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Tipo de alinhamento
                  children: [
                    const Text(
                      'SAMPA-LEE',
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold, // Texto em negrito
                        color: Color.fromARGB(255, 10, 10, 10),
                      ),
                    ),
                  
                    const Text(
                      'A CULTURA QUE VOCÊ PROCURA',
                      style: TextStyle(
                        fontSize: 25, // Tamanho da fonte
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 10, 10, 10),
                      ),
                    ),

                    Image.asset(
                      'assets/img/logolee.png', // Caminho da Logo
                      height: 300.0,
                      width: 300.0,
                    ),

                    ElevatedButton(
                      onPressed: () {
                      // Ações do botão
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
                ], // children
              // Widgets             
              ),
            ),    
          ],
        ),
      ),
    );
  }
}