import 'package:flutter/material.dart';

import 'pages/section1.dart';
import 'pages/section2.dart';
import 'pages/section3.dart';
import 'pages/section4.dart';
import 'pages/section5.dart';
import 'pages/section6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geevo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UnderMaintenance(),
    );
  }
}

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
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Section1(key: keys[0], keys: keys),
            Section2(key: keys[1]),
            Section3(key: keys[2]),
            Section4(key: keys[3]),
            Section5(key: keys[4]),
            Section6(key: keys[5]),
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
