import 'package:flutter/material.dart';
import 'package:introapp/data/questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizScreen> {
  String text = "Aşağıdakilerden hangisi bir widget türüdür";

  void changeText() {
    setState(() {
      text = "Yeni Değer";
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(questions[0].question),
              ...questions[0].answers.map((answer) {
                return ElevatedButton(
                    onPressed: () {
                      changeText();
                    },
                    child: Text(answer));
              })
            ],
          ),
        ),
      ),
    );
  }
}
