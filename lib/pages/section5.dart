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
      "asset/images/Ernany.png",
      "asset/images/Lizandra.png",
      "asset/images/Bruno.png",
      "asset/images/Hellen.png"
    ];
    return Center(
      child: SizedBox(
        width: size.width * 0.65,
        child: Center(
          child: SizedBox(
            height: size.height * 0.8,
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
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                '\n\nNós somos uma familia de inovadores, comprometidos em transformar  a maneira como você faz negócios. Cada membro traz uma combinação única de experiência, criatividade e dedicação, garantindo que oferecemos não apenas  serviços, mas soluções transformadoras.',
                            style: TextStyle(fontSize: 16),
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
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: '\n${positions[index]}',
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 70, 0, 0),
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF264D56)
                                            .withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(40),
                                        border: Border.all(
                                          color: const Color(0xFF264D56),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Image.asset(
                                        images[index],
                                        height: 190,
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
          ),
        ),
      ),
    );
  }
}

class Section5Mobile extends StatelessWidget {
  const Section5Mobile({super.key});

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
      "asset/images/Ernany.png",
      "asset/images/Lizandra.png",
      "asset/images/Bruno.png",
      "asset/images/Hellen.png"
    ];
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Center(
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
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            '\n\nNós somos uma familia de inovadores, comprometidos em transformar  a maneira como você faz negócios. Cada membro traz uma combinação única de experiência, criatividade e dedicação, garantindo que oferecemos não apenas  serviços, mas soluções transformadoras.',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.count(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
              children: List.generate(
                names.length,
                (index) {
                  return Container(
                    margin: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '\n${positions[index]}',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                              height: 100,
                              decoration: BoxDecoration(
                                color: const Color(0xFF264D56).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                  color: const Color(0xFF264D56),
                                  width: 1,
                                ),
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                images[index],
                                height: 160,
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
        ],
      ),
    );
  }
}
