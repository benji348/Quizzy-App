import 'package:benji_quizz_app/models/questions.dart';
import 'package:benji_quizz_app/widgets/game_over.dart';
import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  static String routeName = '/answer-screen';
  @override
  State<StatefulWidget> createState() {
    return AnswerState();
  }
}

class AnswerState extends State<Answer> {
  var questionAnswerList = Questions();
  var _questionCounter = 0;
  static var score = 0.0;

  void incrementQuestionCounter(double dataScore) {
    score += (dataScore.toInt());
    setState(() {
      _questionCounter += 1;
      //
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quizz',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: _questionCounter < questionAnswerList.questions.length
          ? SizedBox(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        questionAnswerList.questions[_questionCounter]
                            ['question'],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: List.generate(
                          questionAnswerList.questions.length, (index) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton(
                            child: Text(
                                questionAnswerList.questions[_questionCounter]
                                    ['answer'][index]['cityName']),
                            onPressed: () => incrementQuestionCounter(
                                questionAnswerList.questions[_questionCounter]
                                    ['answer'][index]['score']),
                          ),
                        );
                      }),
                      // children: [
                      //   const SizedBox(
                      //     height: 29,
                      //   ),
                      //   Text(
                      //     questionAnswer.questions[_questionCounter]['question']
                      //         as String,
                      //     style: const TextStyle(color: Colors.indigo, fontSize: 29),
                      //   ),
                      //   const SizedBox(
                      //     height: 29,
                      //   ),
                      //   ...(questionAnswer.questions[_questionCounter]['answer']
                      //           as List<Map<String, Object>>)
                      //       .map((e) {
                      //     return SizedBox(
                      //         width: double.infinity,
                      //         child: ElevatedButton(
                      //             child: Text(e['cityName'] as String),
                      //             onPressed: () => incrementQuestionCounter(
                      //                 (e['score'] as double).ceilToDouble())));
                      //   }).toList()
                      // ],
                    ),
                  ],
                ),
              ),
            )
          : GameOver(score),
    );
  }
}
