import 'package:flutter/material.dart';

class Section4 extends StatelessWidget {
  const Section4({super.key});

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
            child: Stack(
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 310,
                        margin: const EdgeInsets.all(40.0),
                        decoration: BoxDecoration(
                          color: Colors.teal[300]!.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: Colors.teal,
                            width: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.start,
                    text: const TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.5,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'SOBRE A GEEVO',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              '\n\nSomos uma empresa que respira inovação, juventude e disrupção. Nosso lema é claro: Transformamos a complexidade empresarial em simpliciade criativa, permitindo que você foque no que realmente importa  crescer e inovar.',
                          style: TextStyle(fontSize: 16),
                        ),
                        TextSpan(
                          text:
                              '\n\nNossos serviços vão além do convencional, combinamos produtos de marketing, finanças e gestão de maneira desafiadora. Somos os arquitetos de uma nova era para negócios, moldando futuros com ideias audaciosas e soluções vanguardistas.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 36.0),
                    child: TextButton.icon(
                      iconAlignment: IconAlignment.end,
                      style: TextButton.styleFrom(
                          side: const BorderSide(color: Colors.teal, width: 1),
                          backgroundColor: Colors.teal[300]!.withOpacity(0.2)),
                      onPressed: () {},
                      label: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("FALE COM A GENTE",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ),
                      icon:
                          const Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Section4Mobile extends StatelessWidget {
  const Section4Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 310,
                        margin: const EdgeInsets.all(40.0),
                        decoration: BoxDecoration(
                          color: Colors.teal[300]!.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: Colors.teal,
                            width: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.start,
                    text: const TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.5,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'SOBRE A GEEVO',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              '\n\nSomos uma empresa que respira inovação, juventude e disrupção. Nosso lema é claro: Transformamos a complexidade empresarial em simpliciade criativa, permitindo que você foque no que realmente importa  crescer e inovar.',
                          style: TextStyle(fontSize: 14),
                        ),
                        TextSpan(
                          text:
                              '\n\nNossos serviços vão além do convencional, combinamos produtos de marketing, finanças e gestão de maneira desafiadora. Somos os arquitetos de uma nova era para negócios, moldando futuros com ideias audaciosas e soluções vanguardistas.',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: TextButton.icon(
                      iconAlignment: IconAlignment.end,
                      style: TextButton.styleFrom(
                          side: const BorderSide(color: Colors.teal, width: 1),
                          backgroundColor: Colors.teal[300]!.withOpacity(0.2)),
                      onPressed: () {},
                      label: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("FALE COM A GENTE",
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      ),
                      icon:
                          const Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
