import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Section6 extends StatelessWidget {
  const Section6({super.key});

  Future<void> _launchUrl(Uri url) async {
    await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: size.width * 0.65,
        height: size.height * 0.25,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                        color: const Color(0xFF264D56).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          color: const Color(0xFF264D56),
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
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                text: 'BELÉM',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '\n\n(91) 99144-0210',
                                style: TextStyle(fontSize: 12),
                              ),
                              TextSpan(
                                text: '\ncontato@geevo.com.br',
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
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "ACOMPANHE A GENTE:",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () => _launchUrl(Uri.parse(
                                  "https://www.linkedin.com/company/geevoservicos/")),
                              icon: SvgPicture.asset(
                                "asset/svg/icons8-linked-in.svg",
                                colorFilter: const ColorFilter.mode(
                                    Colors.white, BlendMode.srcIn),
                              ),
                            ),
                            IconButton(
                              onPressed: () => _launchUrl(Uri.parse(
                                  "https://www.linkedin.com/company/geevoservicos/")),
                              icon: SvgPicture.asset(
                                "asset/svg/icons8-facebook.svg",
                                colorFilter: const ColorFilter.mode(
                                    Colors.white, BlendMode.srcIn),
                              ),
                            ),
                            IconButton(
                              onPressed: () => _launchUrl(Uri.parse(
                                  "https://www.instagram.com/geevoservicos/")),
                              icon: SvgPicture.asset(
                                "asset/svg/icons8-instagram.svg",
                                colorFilter: const ColorFilter.mode(
                                    Colors.white, BlendMode.srcIn),
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
      ),
    );
  }
}

class Section6Mobile extends StatelessWidget {
  const Section6Mobile({super.key});

  Future<void> _launchUrl(Uri url) async {
    await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(4.0),
            margin: const EdgeInsets.all(12.0),
            height: 90,
            width: 340,
            decoration: BoxDecoration(
              color: const Color(0xFF264D56).withOpacity(0.2),
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color: const Color(0xFF264D56),
                width: 1,
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'asset/images/GEEVO-04.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4.0),
            margin: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "ACOMPANHE A GENTE:",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => _launchUrl(Uri.parse(
                          "https://www.linkedin.com/company/geevoservicos/")),
                      icon: SvgPicture.asset(
                        "asset/svg/icons8-linked-in.svg",
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn),
                      ),
                    ),
                    IconButton(
                      onPressed: () => _launchUrl(Uri.parse(
                          "https://www.linkedin.com/company/geevoservicos/")),
                      icon: SvgPicture.asset(
                        "asset/svg/icons8-facebook.svg",
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn),
                      ),
                    ),
                    IconButton(
                      onPressed: () => _launchUrl(Uri.parse(
                          "https://www.instagram.com/geevoservicos/")),
                      icon: SvgPicture.asset(
                        "asset/svg/icons8-instagram.svg",
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4.0),
            margin: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                        text: 'BELÉM',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '\n\n(91) 99144-0210',
                        style: TextStyle(fontSize: 12),
                      ),
                      TextSpan(
                        text: '\ncontato@geevo.com.br',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
