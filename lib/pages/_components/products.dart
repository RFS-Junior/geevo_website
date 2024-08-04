import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Product(
            title: "FINANCAS ÁGEIS",
            items: [
              "* Contas a Pagar e Receber",
              "* Planejamento Financeiro",
              "* Auditoria e Compliance",
              "* Relatórios",
              "* Consultoria Financeira",
            ],
          ),
          Product(
            title: "MARCA",
            items: [
              "* Branding",
              "* Identidade Visual",
              "* Design Outsourcing",
              "* Web Design",
              "* Gestão de Mídias Sociais",
            ],
          ),
          Product(
            title: "GESTÃO INTELIGENTE",
            items: [
              "* Implementação de Sistemas",
              "* Mapeamento de Processos",
              "* Criação de Manuais",
              "* Treinamento de Equipes",
            ],
          ),
        ],
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({super.key, required this.title, required this.items});

  final String title;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 280,
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
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              style: const TextStyle(color: Colors.white),
              children: List.generate(
                items.length + 1,
                (int index) => index == 0
                    ? TextSpan(
                        text: title,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    : TextSpan(
                        text:
                            '${index == 1 ? "\n\n" : ""}${items[index - 1]}\n',
                        style: const TextStyle(fontSize: 14),
                      ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("SAIBA MAIS",
                  style: TextStyle(fontSize: 14, color: Colors.white70)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward, color: Colors.white))
            ],
          ),
        ],
      ),
    );
  }
}
