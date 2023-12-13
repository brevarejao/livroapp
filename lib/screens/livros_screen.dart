import 'package:flutter/material.dart';

class LivrosApp extends StatefulWidget {
  const LivrosApp({super.key});

  @override
  State<LivrosApp> createState() => _LivrosAppState();
}

class _LivrosAppState extends State<LivrosApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Livros Usados",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/navbar');
            },
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Veja os livros mais populares deste ano",
              style: TextStyle(color: Colors.black87, fontSize: 30.0),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              "Principais Recomendações",
              style: TextStyle(
                fontSize: 18.0,
                height: 1.5,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5qMpwmudzzCQya7Uq13GEFEPPIEhSWUBGdWz0iZUhnO6tRN0Vuj7qAJ6eWb_fmHGbb38&usqp=CAU",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Diário de Um Banana",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.fade,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            "Por Jeff Kinney",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 18.0),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            "8.5/10",
                            style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedButton.icon(
                              onPressed: () {
                                Navigator.pushNamed(context, '/perfil');
                              },
                              icon: Icon(Icons.info),
                              label: const Text(
                                "Detalhes",
                                style: TextStyle(color: Colors.cyan),
                              ),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.cyan),
                                primary: Colors.cyan,
                                onSurface: Colors.cyan,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              "Confira a seleção dos livros mais escolhidos deste mesmo autor.",
              style: TextStyle(fontSize: 22.0),
            ),
            SizedBox(
              height: 180.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 8.0, top: 8.0, bottom: 8.0),
                    child: Container(
                      height: 160.0,
                      width: 100.0,
                      child: Image.network(
                        "https://images-na.ssl-images-amazon.com/images/I/91EShRkyE2L._AC_UL900_SR615,900_.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 8.0, top: 8.0, bottom: 8.0),
                    child: Container(
                      height: 160.0,
                      width: 100.0,
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtC9RA9L68BoUVEnRZ_yscuW6h9TXX5IpkBotjc6CB__dOsz_kxqtRrxcka1lZaTcYlsg&usqp=CAU",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 8.0, top: 8.0, bottom: 8.0),
                    child: Container(
                      height: 160.0,
                      width: 100.0,
                      child: Image.network(
                        "https://static.wixstatic.com/media/869b5f_1a7772f337f74e6a9c7efb30eab4d602~mv2.jpg/v1/fill/w_500,h_750,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/869b5f_1a7772f337f74e6a9c7efb30eab4d602~mv2.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
