import 'package:responsive_framework/responsive_framework.dart' as rf;
import 'package:flutter/material.dart';
import 'package:seo/seo.dart';

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
          child: MenuTopPage(keys: keys, drawer: false),
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
                        style: TextStyle(fontSize: 48),
                      ),
                      TextSpan(
                        text: 'GERENCIAMOS\n',
                        style: TextStyle(
                            fontSize: 48, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'COMPLEXIDADES\n',
                        style: TextStyle(fontSize: 48),
                      ),
                      TextSpan(
                        text: 'VOCÊ FOCA NO QUE\n',
                        style: TextStyle(fontSize: 48),
                      ),
                      TextSpan(
                        text: """                     IMPORTA""",
                        style: TextStyle(
                            fontSize: 48, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Image.asset(
                  'asset/images/forma-fluida.png',
                  scale: 1,
                  height: 700,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section1Mobile extends StatelessWidget {
  const Section1Mobile(
      {super.key, required this.keys, required this.scaffoldKey});

  final List<GlobalKey<State<StatefulWidget>>> keys;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          'asset/images/universe.jpg',
          scale: 1,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: MaterialButton(
                          hoverColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () async {
                            await Scrollable.ensureVisible(
                              keys[0].currentContext!,
                              duration: const Duration(milliseconds: 600),
                            );
                          },
                          child: Seo.image(
                            src: '###',
                            alt: '###',
                            child: Image.asset(
                              'asset/images/GEEVO-04.png',
                              fit: BoxFit.fitHeight,
                              scale: 7,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(flex: 3, child: Container()),
                    Expanded(
                      flex: 1,
                      child: !rf.ResponsiveBreakpoints.of(context)
                              .largerThan(rf.TABLET)
                          ? IconButton(
                              icon: const Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                scaffoldKey.currentState!.openEndDrawer();
                              },
                            )
                          : Container(),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'asset/images/forma-fluida.png',
                      scale: 1,
                      height: MediaQuery.of(context).size.height * 0.5,
                      fit: BoxFit.cover,
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'NÓS\n',
                            style: TextStyle(fontSize: 32),
                          ),
                          TextSpan(
                            text: 'GERENCIAMOS\n',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'COMPLEXIDADES\n',
                            style: TextStyle(fontSize: 32),
                          ),
                          TextSpan(
                            text: 'VOCÊ FOCA NO QUE\n',
                            style: TextStyle(fontSize: 32),
                          ),
                          TextSpan(
                            text: """                    IMPORTA""",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
