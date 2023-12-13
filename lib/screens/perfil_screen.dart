import 'package:flutter/material.dart';
import 'package:newpast/screens/compras_screen.dart';
import 'package:newpast/screens/livros_screen.dart';
import 'package:newpast/screens/menubar_screen.dart';

class PerfilPage extends StatefulWidget {
  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    LivrosApp(),
    ComprasPage(),
    SearchBar(),
    MenubarScreen(),
  ];

  void _navigateToPage(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _pages[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _navigateToPage(index);
        },
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Compras',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
