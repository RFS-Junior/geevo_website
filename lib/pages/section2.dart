import 'package:flutter/material.dart';

import '_components/products.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.65,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
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
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
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
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
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
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
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
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              'PRODUTOS',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Product(
                title: "FINANCAS ÁGEIS",
                items: [
                  " Contas a Pagar e Receber",
                  " Planejamento Financeiro",
                  " Auditoria e Compliance",
                  " Relatórios",
                  " Consultoria Financeira",
                ],
                mobile: false,
              ),
              Product(
                title: "MARCA",
                items: [
                  " Branding",
                  " Identidade Visual",
                  " Design Outsourcing",
                  " Web Design",
                  " Gestão de Mídias Sociais",
                ],
                mobile: false,
              ),
              Product(
                title: "GESTÃO INTELIGENTE",
                items: [
                  " Implementação de Sistemas",
                  " Mapeamento de Processos",
                  " Criação de Manuais",
                  " Treinamento de Equipes",
                ],
                mobile: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Section2Mobile extends StatelessWidget {
  const Section2Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(12.0),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.teal[300]!.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.teal,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '\n\nDE INVESTIMENTOS\n',
                          style: TextStyle(fontSize: 8),
                        ),
                        TextSpan(
                          text: 'ADMINISTRADOS',
                          style: TextStyle(fontSize: 8),
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
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '\n\nNICHOS DE MERCADO\n',
                          style: TextStyle(fontSize: 8),
                        ),
                        TextSpan(
                          text: 'ATENDIDOS',
                          style: TextStyle(fontSize: 8),
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
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '\n\nPROJETOS\n',
                          style: TextStyle(fontSize: 8),
                        ),
                        TextSpan(
                          text: 'ACELERADOS',
                          style: TextStyle(fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              'PRODUTOS',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Product(
                    title: "FINANCAS ÁGEIS",
                    items: [
                      " Contas a Pagar e Receber",
                      " Planejamento Financeiro",
                      " Auditoria e Compliance",
                      " Relatórios",
                      " Consultoria Financeira",
                    ],
                    mobile: true,
                  ),
                ),
                Center(
                  child: Product(
                    title: "MARCA",
                    items: [
                      " Branding",
                      " Identidade Visual",
                      " Design Outsourcing",
                      " Web Design",
                      " Gestão de Mídias Sociais",
                    ],
                    mobile: true,
                  ),
                ),
                Center(
                  child: Product(
                    title: "GESTÃO INTELIGENTE",
                    items: [
                      " Implementação de Sistemas",
                      " Mapeamento de Processos",
                      " Criação de Manuais",
                      " Treinamento de Equipes",
                    ],
                    mobile: true,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product(
      {super.key,
      required this.title,
      required this.items,
      required this.mobile});

  final String title;
  final List<String> items;
  final bool mobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mobile ? 150 : 220,
      width: 250,
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.teal[300]!.withOpacity(0.2),
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: Colors.teal,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                style: const TextStyle(color: Colors.white),
                children: List.generate(
                  items.length + 1,
                  (int index) => index == 0
                      ? TextSpan(
                          text: title,
                          style: TextStyle(
                              fontSize: mobile ? 12 : 18,
                              fontWeight: FontWeight.bold),
                        )
                      : TextSpan(
                          text:
                              '${index == 1 ? "\n\n" : ""}${items[index - 1]}\n',
                          style: TextStyle(fontSize: mobile ? 8 : 14),
                        ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SAIBA MAIS",
                  style: TextStyle(
                      fontSize: mobile ? 10 : 12, color: Colors.white70),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: mobile ? 10 : 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
