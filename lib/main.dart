import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // 1. gereksinim

  // 2. gereksinim
  // Hot Reload => Restarta gerek kalmadan (spesifik durumlar hariç)
  // değişikliklerin görünmesi.
  Widget build(BuildContext buildContext) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Quiz App"), Text("Deneme")],
        ),
      ),
    );
  }
}
