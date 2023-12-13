import 'package:flutter/material.dart';
import 'package:newpast/screens/compras_screen.dart';
import 'package:newpast/screens/imagem.dart';
import 'package:newpast/screens/inicio_screen.dart';
import 'package:newpast/screens/livros_screen.dart';
import 'package:newpast/screens/login_screen.dart';
import 'package:newpast/screens/navbar_screen.dart';
import 'package:newpast/screens/perfil_screen.dart';
import 'package:newpast/screens/pesquisa_screen.dart';
import 'package:newpast/screens/detalhes_screen.dart';
import 'package:newpast/screens/splash.dart';
import 'package:newpast/screens/menubar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/login': (context) => LoginPage(),
        '/home': (context) => LivrosApp(),
        '/perfil': (context) => PerfilPage(),
        '/inicio': (context) => InicioPage(),
        '/detalhes': (context) => DetalhesPage(),
        '/pesquisa': (context) => SearchBarExample(),
        '/compras': (context) => ComprasPage(),
        '/menubar': (context) => MenubarScreen(),
        '/navbar': (context) => BottomMenuScreen(),
        '/imagens': (context) => ImagePage()
      },
    );
  }
}
