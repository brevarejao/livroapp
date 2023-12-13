//import 'dart:collection';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomMenuScreen(),
    );
  }
}

class BottomMenuScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BottomMenuScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    InitialScreen(title: 'Inicial'),
    LikedScreen(title: 'Curtidos'),
    SearchScreen(title: 'Pesquisa'),
    ProfileScreen(title: 'Perfil'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biblioteca de Livros Usados'),
        backgroundColor: Colors.cyan,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Curtidos',
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

class InitialScreen extends StatelessWidget {
  final String title;

  const InitialScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Adicione um widget
          Image.asset('assets/images/livro.png', width: 100, height: 100),
          SizedBox(height: 16),
          Text(
            '$title - Conteúdo da Tela Inicial',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class LikedScreen extends StatelessWidget {
  final String title;

  const LikedScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Adicione um widget
          Image.asset('assets/images/cora.png', width: 100, height: 100),
          SizedBox(height: 16),
          Text(
            '$title - Conteúdo da Tela de Curtidos',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  final String title;

  const SearchScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Adicione um widget
          Image.asset('assets/images/lupa.png', width: 100, height: 100),
          SizedBox(height: 16),
          Text(
            '$title - Conteúdo da Tela de Pesquisa',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final String title;

  const ProfileScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Adicione um widget
          Image.asset('assets/images/prof.png', width: 100, height: 100),
          SizedBox(height: 16),
          Text(
            '$title - Conteúdo da Tela de Perfil',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
