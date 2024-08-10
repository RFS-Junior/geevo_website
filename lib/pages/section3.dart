import 'package:flutter/material.dart';

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF264D56),
        border: Border(
          top: BorderSide(
            color: Colors.white60,
            width: 1.0,
            style: BorderStyle.solid,
          ),
          bottom: BorderSide(
            color: Colors.white60,
            width: 1.0,
            style: BorderStyle.solid,
          ),
        ),
      ),
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
