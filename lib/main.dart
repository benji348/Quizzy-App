import 'package:benji_quizz_app/screens/main_page_screen.dart';
import 'package:benji_quizz_app/widgets/answer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sample App',
        darkTheme: ThemeData.dark(),
        theme: ThemeData(
            primarySwatch: Colors.indigo,
            accentColor: Colors.indigoAccent,
            textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1:
                    const TextStyle(fontSize: 16, color: Colors.yellowAccent),
                headline6:
                    const TextStyle(color: Colors.yellow, fontSize: 24))),
        home: const MyMainPageScreen(),
        routes: {
          Answer.routeName: (ctx) => Answer(),
        });
  }
}
