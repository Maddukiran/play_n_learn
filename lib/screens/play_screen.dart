import 'package:flutter/material.dart';
import 'package:play_n_learn/components/reusable_card.dart';
import 'package:play_n_learn/components/round_icon_button.dart';
import 'package:play_n_learn/components/quiz_brain.dart';

class SelectionScreen extends StatefulWidget {
  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  int score = 0;
  int num = QuizBrain().getImage();

  @override
  void checkCorrectAnswer(String ans) {
    String correctAnswer = QuizBrain().getCorrectAns();

    setState(() {
      if (ans == correctAnswer) {
        score++;
      }
      QuizBrain().nextQuestion();
      num = QuizBrain().getImage();
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple[100],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                child: ReusableCard(
                  cardChild: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset('images/appBar2.png'),
                      Text(
                        "Play 'N' Learn",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      Image.asset('images/appBar1.png'),
                    ],
                  ),
                  color: Colors.purple,
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ReusableCard(
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 8,
                        child: Image.asset('images/fruits/fruit$num.png'),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            RoundIconButton(
                              title: QuizBrain().getWrongAns(),
                              onPressed: () {
                                checkCorrectAnswer('Apple');
                              },
                            ),
                            RoundIconButton(
                              title: QuizBrain().getCorrectAns(),
                              onPressed: () {
                                checkCorrectAnswer('Grapes');
                                print(score);
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  color: Colors.purple[300],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                child: ReusableCard(
                  cardChild: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('images/bottom.png'),
                      Image.asset(
                        'images/comic.png',
                        height: 70.0,
                      ),
                    ],
                  ),
                  color: Colors.purple,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
