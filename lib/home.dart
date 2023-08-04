import 'package:flutter/material.dart';
import 'package:custom_cards_design/card_painter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Cards')),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 20),
              card(context, Colors.purple.shade700, Colors.pink.shade700),
              const SizedBox(height: 20),
              card(context, Colors.orange.shade700, Colors.black),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget card(BuildContext context, Color color1, Color color2) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.7,
      width: width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(colors: [color1, color2]),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: CustomPaint(
          size: Size(width, height),
          painter: CustomCardPainter(),
        ),
      ),
    );
  }
}
