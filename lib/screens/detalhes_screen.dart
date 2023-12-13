import 'package:flutter/material.dart';
import 'package:newpast/screens/imagem.dart';

class DetalhesPage extends StatefulWidget {
  @override
  _WishlistAppState createState() => _WishlistAppState();
}

class _WishlistAppState extends State<DetalhesPage> {
  List<String> listaDeDesejos = [];
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Detalhes'),
      ),
      body: ListView.builder(
        itemCount: listaDeDesejos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listaDeDesejos[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                _removerDesejo(index);
              },
            ),
            onTap: () {
              _editarDesejo(index);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _adicionarDesejo(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ImagePage()),
          );
        },
        child: Icon(Icons.book_rounded),
        backgroundColor: Colors.cyan,
      ),
    );
  }

  void _adicionarDesejo(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color.fromRGBO(207, 204, 223, 1),
          title: Text('Adicionar Desejo'),
          content: TextField(
            controller: controller,
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Adicionar'),
              onPressed: () {
                setState(() {
                  listaDeDesejos.add(controller.text);
                  controller.clear();
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editarDesejo(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        controller.text = listaDeDesejos[index];
        return AlertDialog(
          backgroundColor: Color.fromRGBO(207, 204, 223, 1),
          title: Text('Editar Desejo'),
          content: TextField(
            controller: controller,
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Salvar'),
              onPressed: () {
                setState(() {
                  listaDeDesejos[index] = controller.text;
                  controller.clear();
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _removerDesejo(int index) {
    setState(() {
      listaDeDesejos.removeAt(index);
    });
  }
}
