import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchBarExample(),
    );
  }
}

class SearchBarExample extends StatefulWidget {
  @override
  _SearchBarExampleState createState() => _SearchBarExampleState();
}

class _SearchBarExampleState extends State<SearchBarExample> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra de Pesquisa'),
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implemente a lógica de pesquisa aqui
              print('Pesquisar: ${_searchController.text}');
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Conteúdo'),
      ),
    );
  }
}
