import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.onStartButtonPressed, {super.key}); // 1. gereksinim
  final void Function() onStartButtonPressed;
  // 2. gereksinim
  // Hot Reload => Restarta gerek kalmadan (spesifik durumlar hariç)
  // değişikliklerin görünmesi.
  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // asset
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 240,
            ),
            // Image.network(
            //     "https://miro.medium.com/v2/resize:fit:720/format:webp/1*FBRsnCP9wE84UVW1Kkv5Yw.jpeg"),
            const Text("Quiz App",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5)),
            ElevatedButton(
              onPressed: () {
                onStartButtonPressed();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, foregroundColor: Colors.black),
              child: const Text(
                "Oyuna Başla",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
