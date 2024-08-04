import 'package:flutter/material.dart';

import '_components/menu_top_page.dart';

class Section1 extends StatelessWidget {
  const Section1({super.key, required this.keys});

  final List<GlobalKey<State<StatefulWidget>>> keys;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: size.width * 0.65,
          height: size.height * 0.1,
          child: MenuTopPage(keys: keys),
        ),
        SizedBox(
          width: size.width * 0.65,
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
                        text: """                   IMPORTA""",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
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
