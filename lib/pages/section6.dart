import 'package:flutter/material.dart';

class Section6 extends StatelessWidget {
  const Section6({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.6,
      height: size.height * 0.3,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 12.0),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.teal[300]!.withOpacity(0.2),
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: Colors.teal,
                  width: 1,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'asset/images/GEEVO-04.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
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
                            text: 'BELÉM',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '\n\n(91) 991440210',
                            style: TextStyle(fontSize: 12),
                          ),
                          TextSpan(
                            text: '\n\ncontato@geevo.com.br',
                            style: TextStyle(fontSize: 12),
                          ),
                          TextSpan(
                            text:
                                '\n\nAv. Conselheiro Furtado, 1240\n- Sala 203 - Batista Campos,\nBelém - PA, 66025-160',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "ACOMPANHE A GENTE:",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.facebook,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.facebook,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.facebook,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
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
