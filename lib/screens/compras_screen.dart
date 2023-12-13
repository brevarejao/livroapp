import 'package:flutter/material.dart';

void main() {
  runApp(ComprasPage());
}

class ComprasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Compras',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: PesquisaPagina(),
      onGenerateRoute: (settings) {
        if (settings.name == '/pesquisa') {
          return MaterialPageRoute(
            builder: (context) => DetailsPage(books: []),
          );
        }
        return null;
      },
    );
  }
}

class PesquisaPagina extends StatefulWidget {
  @override
  _PesquisaPaginaState createState() => _PesquisaPaginaState();
}

class _PesquisaPaginaState extends State<PesquisaPagina> {
  List<Livro> carrinho = [];

  void adicionarAoCarrinho(Livro livro) {
    setState(() {
      carrinho.add(livro);
    });
  }

  List<Widget> _buildListaDeLivros() {
    List<Livro> livros = [
      Livro(
        titulo: "Livro 1",
        autor: "Autor 1",
        preco: 25.99,
      ),
      Livro(
        titulo: "Livro 2",
        autor: "Autor 2",
        preco: 35.99,
      ),
    ];

    return livros.map((livro) {
      return ListTile(
        leading: Icon(Icons.book),
        title: Text(
          livro.titulo,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(livro.autor),
        trailing: OutlinedButton.icon(
          onPressed: () {
            adicionarAoCarrinho(livro);
            Navigator.pushNamed(context, '/pesquisa');
          },
          icon: Icon(Icons.add_shopping_cart),
          label: Text(
            "Adicionar",
            style: TextStyle(color: Colors.cyan),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compras"),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(
        children: _buildListaDeLivros(),
      ),
    );
  }
}

class Livro {
  final String titulo;
  final String autor;
  final double preco;

  Livro({required this.titulo, required this.autor, required this.preco});
}

class DetailsPage extends StatelessWidget {
  final List<Livro> books;

  DetailsPage({required this.books});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Livros"),
        backgroundColor: Colors.cyan,
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.book),
            title: Text(
              books[index].titulo,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(books[index].autor),
            trailing: Text(
              "\$${books[index].preco}",
              style: TextStyle(color: Colors.cyan),
            ),
          );
        },
      ),
    );
  }
}
