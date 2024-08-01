import 'package:flutter/material.dart';
import 'package:geevo_website/_components/products.dart';

import '_components/menu_top_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final List<GlobalKey<State<StatefulWidget>>> keys =
        List.generate(6, (index) => GlobalKey<State<StatefulWidget>>());
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Section1(key: keys[0], keys: keys),
            Section2(key: keys[1]),
            Section3(key: keys[2]),
            Section4(key: keys[3]),
            Section5(key: keys[4]),
            Section6(key: keys[5]),
          ],
        ),
      ),
    );
  }
}

class Section1 extends StatelessWidget {
  const Section1({super.key, required this.keys});

  final List<GlobalKey<State<StatefulWidget>>> keys;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: size.width * 0.7,
          height: size.height * 0.1,
          child: MenuTopPage(keys: keys),
        ),
        SizedBox(
          width: size.width * 0.7,
          height: size.height * 0.9,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'NÓS\n',
                        style: TextStyle(fontSize: 50),
                      ),
                      TextSpan(
                        text: 'GERENCIAMOS\n',
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'COMPLEXIDADES\n',
                        style: TextStyle(fontSize: 50),
                      ),
                      TextSpan(
                        text: 'VOCÊ FOCA NO QUE\n',
                        style: TextStyle(fontSize: 50),
                      ),
                      TextSpan(
                        text: 'IMPORTA',
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.7,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              width: 800,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.teal[300]!.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              child: Center(
                child: SizedBox(
                  width: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                              text: '+20M',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '\n\nDE INVESTIMENTOS\n',
                              style: TextStyle(fontSize: 11),
                            ),
                            TextSpan(
                              text: 'ADMINISTRADOS',
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      Container(height: 60, width: 2, color: Colors.white),
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                              text: '14',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '\n\nNICHOS DE MERCADO\n',
                              style: TextStyle(fontSize: 11),
                            ),
                            TextSpan(
                              text: 'ATENDIDOS',
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      Container(height: 60, width: 2, color: Colors.white),
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                              text: '+25',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '\n\nPROJETOS\n',
                              style: TextStyle(fontSize: 11),
                            ),
                            TextSpan(
                              text: 'ACELERADOS',
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 60, 0, 30),
            child: Text(
              'PRODUTOS',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),
          const Products(),
        ],
      ),
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: const Text("NOSSOS CLIENTES"),
    );
  }
}

class Section4 extends StatelessWidget {
  const Section4({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: const Text("SOBRE"),
    );
  }
}

class Section5 extends StatelessWidget {
  const Section5({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: const Text("NOSSO TIME"),
    );
  }
}

class Section6 extends StatelessWidget {
  const Section6({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: const Text("CONTATO"),
    );
  }
}
