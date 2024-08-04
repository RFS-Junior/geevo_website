import 'package:flutter/material.dart';

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal[300]!.withOpacity(0.25),
        border: const Border(
          top: BorderSide(
            color: Colors.teal,
            width: 1.0,
            style: BorderStyle.solid,
          ),
          bottom: BorderSide(
            color: Colors.teal,
            width: 1.0,
            style: BorderStyle.solid,
          ),
        ),
      ),
      width: size.width,
      height: size.height * 0.4,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0),
            child: Text(
              "NOSSOS CLIENTES",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
