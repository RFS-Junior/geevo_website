import 'package:flutter/material.dart';

class Section5 extends StatelessWidget {
  const Section5({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.65,
      height: size.height,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(24.0),
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'NOSSO TIME',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          '\n\nNós somos uma familia de inovadores, comprometidos em transformar  a maneira como você faz negócios. Cada membro traz uma combinação única de experiência, criatividade e dedicação, garantindo que oferecemos não apenas  serviços, mas soluções transformadoras.',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Center(
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    children: List.generate(
                      4,
                      (index) {
                        return Container(
                          margin: const EdgeInsets.all(24.0),
                          decoration: BoxDecoration(
                            color: Colors.teal[300]!.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: Colors.teal,
                              width: 1,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
