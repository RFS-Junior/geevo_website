import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:geevo_website/pages/_components/menu_top_page.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart' as rf;
import 'package:seo/seo.dart';

import 'pages/section1.dart';
import 'pages/section2.dart';
import 'pages/section3.dart';
import 'pages/section4.dart';
import 'pages/section5.dart';
import 'pages/section6.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) => const MaterialPage(
            child: MyHomePage(),
          ),
        ),
      ],
    );

    return SeoController(
      enabled: true,
      tree: WidgetTree(context: context),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        builder: (context, child) => rf.ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: const [
            rf.Breakpoint(start: 0, end: 599, name: rf.MOBILE),
            rf.Breakpoint(start: 600, end: 1023, name: rf.TABLET),
            rf.Breakpoint(start: 1024, end: 1919, name: rf.DESKTOP),
            rf.Breakpoint(start: 1920, end: double.infinity, name: 'XL'),
          ],
        ),
        title: 'Geevo',
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final List<GlobalKey<State<StatefulWidget>>> keys =
        List.generate(6, (index) => GlobalKey<State<StatefulWidget>>());
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black87,
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.black54,
              ),
              child: Container(),
            ),
            MenuTopPage(
              keys: keys,
              drawer: true,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1.05,
              child: Image.asset(
                'asset/images/universe.jpg',
                scale: 1,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1.05,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: <Widget>[
                !rf.ResponsiveBreakpoints.of(context).smallerThan(rf.TABLET)
                    ? Section1(key: keys[0], keys: keys)
                    : Section1Mobile(
                        key: keys[0], keys: keys, scaffoldKey: scaffoldKey),
                !rf.ResponsiveBreakpoints.of(context).smallerThan(rf.TABLET)
                    ? Section2(key: keys[1])
                    : Section2Mobile(key: keys[1]),
                Section3(key: keys[2]),
                !rf.ResponsiveBreakpoints.of(context).smallerThan(rf.TABLET)
                    ? Section4(key: keys[3])
                    : Section4Mobile(key: keys[3]),
                !rf.ResponsiveBreakpoints.of(context).smallerThan(rf.TABLET)
                    ? Section5(key: keys[4])
                    : Section5Mobile(key: keys[4]),
                !rf.ResponsiveBreakpoints.of(context).smallerThan(rf.TABLET)
                    ? Section6(key: keys[5])
                    : Section6Mobile(key: keys[5]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UnderMaintenance extends StatelessWidget {
  const UnderMaintenance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Site em manutenção",
                style: TextStyle(fontSize: 35, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
