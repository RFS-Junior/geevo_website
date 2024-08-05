import 'package:flutter/material.dart';

import '_components/products.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.6,
      height: size.height,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ResultsComponent(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              'PRODUTOS',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          Products(),
        ],
      ),
    );
  }
}

class ResultsComponent extends StatelessWidget {
  const ResultsComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 12.0, 0, 16.0),
      width: 800,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.teal[300]!.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.teal,
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
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '+20M',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: '\n\nDE INVESTIMENTOS\n',
                      style: TextStyle(fontSize: 10),
                    ),
                    TextSpan(
                      text: 'ADMINISTRADOS',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              Container(height: 60, width: 2, color: Colors.white),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '14',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: '\n\nNICHOS DE MERCADO\n',
                      style: TextStyle(fontSize: 10),
                    ),
                    TextSpan(
                      text: 'ATENDIDOS',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              Container(height: 60, width: 2, color: Colors.white),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '+25',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: '\n\nPROJETOS\n',
                      style: TextStyle(fontSize: 10),
                    ),
                    TextSpan(
                      text: 'ACELERADOS',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
