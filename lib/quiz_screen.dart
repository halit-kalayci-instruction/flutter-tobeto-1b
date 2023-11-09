import 'package:flutter/material.dart';
import 'package:introapp/data/questions.dart';

class QuizScreen extends StatefulWidget {
  // named argument

  // default argumentlar required olarak gelir
  // named argumentlar required olarak gelmez, gerektiğinde işaretlenmesi gerekir.
  const QuizScreen({super.key, required this.chooseAnswer});
  final void Function(String answer) chooseAnswer;

  @override
  State<QuizScreen> createState() {
    return _QuizState();
  }
}

// navigator
class _QuizState extends State<QuizScreen> {
  int selectedQuestionIndex = 0;

  void changeQuestion() {
    setState(() {
      if (questions.length - 1 > selectedQuestionIndex)
        selectedQuestionIndex++;
      else {
        // Quizi bitirme
      }
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
              Text(questions[selectedQuestionIndex].question),
              ...questions[selectedQuestionIndex].answers.map((answer) {
                return ElevatedButton(
                    onPressed: () {
                      widget.chooseAnswer(answer);
                      changeQuestion();
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

// en az 10 adet flutter ile alaklı soru eklenecek
// result_screen.dart
// Soruları bitirdiğinde bu ekrana yönlendirilecek
// EKSTRA: Cevaplar hafızada tutulacak ve kullanıcıya kendi cevapları listelenecek
// EKSTRA 2: Kaç adet doğru kaç adet yanlış cevap verdi.
// (Liste widget)

