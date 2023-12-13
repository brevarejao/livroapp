import 'package:flutter/material.dart';

void main() => runApp(MenubarScreen());

class MenubarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Página Principal'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              title: Text('Explorar Livros'),
              onTap: () {
                Navigator.pushNamed(context, '/inicio');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Conteúdo da Biblioteca de Livros Usados'),
      ),
    );
  }
}
