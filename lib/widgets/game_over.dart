import 'package:benji_quizz_app/widgets/answer.dart';
import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {
  var score;
  GameOver(this.score);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: double.infinity,
          child: Text(
            'You did it!',
            style: TextStyle(color: Colors.indigoAccent, fontSize: 29),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            'Your Score: $score',
            style: TextStyle(color: Colors.indigo),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 99,
        ),
        const SizedBox(
            width: double.infinity,
            child: Text(
              'Replay!',
              style: TextStyle(color: Colors.indigo),
              textAlign: TextAlign.center,
            )),
        SizedBox(
          width: double.infinity,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Answer.routeName);
            },
            icon: const Icon(
              Icons.replay,
              color: Colors.yellow,
            ),
          ),
        )
      ],
    );
  }
}
