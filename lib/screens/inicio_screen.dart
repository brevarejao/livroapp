import 'package:flutter/material.dart';

class Book {
  final String id;
  final String title;
  final String author;
  final String imageUrl;
  final double price;

  Book(
      {required this.id,
      required this.title,
      required this.author,
      required this.imageUrl,
      required this.price});
}

class BookCard extends StatelessWidget {
  final Book book;

  BookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(book.imageUrl),
          Text(book.title),
          Text(book.author),
          Text('\$${book.price}'),
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Used Books App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InicioPage(),
    );
  }
}

class InicioPage extends StatefulWidget {
  InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  List<Book> books = [
    Book(
      id: '1',
      title: 'A Cabana',
      author: 'William P. Young',
      imageUrl:
          'https://images-americanas.b2w.io/produtos/6719447/imagens/livro-a-cabana/6719447_1_large.jpg',
      price: 25.99,
    ),
    Book(
      id: '2',
      title: 'Código da Vinci',
      author: 'Dan Brown',
      imageUrl:
          'https://leitura.com.br/image/cache/products/9788575421130-500x500.jpg',
      price: 14.99,
    ),
    Book(
        id: '3',
        title: 'Insurgente',
        author: 'Veronica Roth',
        imageUrl:
            'https://http2.mlstatic.com/D_NQ_NP_808597-MLU50456697822_062022-O.webp',
        price: 20.99),
    Book(
        id: '4',
        title: 'Jogos Vorazes',
        author: 'Suzanne Collins',
        imageUrl:
            'https://images-americanas.b2w.io/produtos/4820521848/imagens/livro-jogos-vorazes/4820521848_1_large.jpg',
        price: 22.99)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explorar'),
        backgroundColor: Colors.cyan,
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookCard(book: books[index]);
        },
      ),
    );
  }
}
