import 'package:flutter/material.dart';

import '_components/menu_top_page.dart';

class Section1 extends StatelessWidget {
  const Section1({super.key, required this.keys});

  final List<GlobalKey<State<StatefulWidget>>> keys;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          'asset/images/universe.jpg',
          scale: 1,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Center(
          child: Column(
            children: [
              SizedBox(
                width: size.width * 0.6,
                height: size.height * 0.1,
                child: MenuTopPage(keys: keys),
              ),
              SizedBox(
                width: size.width * 0.6,
                height: size.height * 0.9,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.5,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'NÓS\n',
                              style: TextStyle(fontSize: 55),
                            ),
                            TextSpan(
                              text: 'GERENCIAMOS\n',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'COMPLEXIDADES\n',
                              style: TextStyle(fontSize: 55),
                            ),
                            TextSpan(
                              text: 'VOCÊ FOCA NO QUE\n',
                              style: TextStyle(fontSize: 55),
                            ),
                            TextSpan(
                              text: """                    IMPORTA""",
                              style: TextStyle(
                                  fontSize: 55, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.red,
                        child: Image.asset(
                          'asset/images/figure1.png',
                          scale: 1,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.8,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
