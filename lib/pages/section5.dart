import 'package:flutter/material.dart';

class Section5 extends StatelessWidget {
  const Section5({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> names = [
      "ERNANY AMARAL",
      "LIZANDRA SILVA",
      "BRUNO KATO",
      "HELLEN SILVA"
    ];
    List<String> positions = ["CMO", "CFO", "CM", "COO"];
    List<String> linkedins = ["", "", "", ""];
    List<String> images = [
      "asset/images/steve.png",
      "asset/images/steve.png",
      "asset/images/steve.png",
      "asset/images/steve.png"
    ];
    return SizedBox(
      width: size.width * 0.6,
      height: size.height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(12.0),
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
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          '\n\nNós somos uma familia de inovadores, comprometidos em transformar  a maneira como você faz negócios. Cada membro traz uma combinação única de experiência, criatividade e dedicação, garantindo que oferecemos não apenas  serviços, mas soluções transformadoras.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                children: List.generate(
                  names.length,
                  (index) {
                    return Container(
                      margin: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              style: const TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.5,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: names[index],
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: '\n${positions[index]}',
                                  style: const TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                height: 120,
                                decoration: BoxDecoration(
                                  color: Colors.teal[300]!.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(
                                    color: Colors.teal,
                                    width: 1,
                                  ),
                                ),
                              ),
                              Center(
                                child: Image.asset(
                                  images[index],
                                  height: 150,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
