import 'package:benji_quizz_app/widgets/answer.dart';
import 'package:flutter/material.dart';

enum Valor {
  Score,
}

class MyMainPageScreen extends StatefulWidget {
  const MyMainPageScreen({Key? key}) : super(key: key);

  @override
  State<MyMainPageScreen> createState() => _MyMainPageScreenState();
}

class _MyMainPageScreenState extends State<MyMainPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quizz App',
            style: TextStyle(color: Colors.yellowAccent),
          ),
          actions: [
            PopupMenuButton(
              itemBuilder: (_) => [
                const PopupMenuItem(
                  child: Text('Score'),
                  value: Valor.Score,
                )
              ],
              onSelected: (Valor select) {
                setState(() {
                  if (select == Valor.Score)
                    Navigator.of(context).pushNamed('/road');
                });
              },
            )
          ],
        ),
        drawer: Drawer(
          child: Container(
            margin: EdgeInsets.all(24),
            child: ListTile(
              leading: const Icon(
                Icons.message_rounded,
                color: Colors.yellow,
              ),
              title: const Text(
                'About us',
                style: TextStyle(color: Colors.indigo),
              ),
              onTap: () {},
            ),
          ),
        ),
        body: Center(
            child: OutlinedButton(
                child: const Text(
                  'Start!',
                  style: TextStyle(color: Colors.indigoAccent, fontSize: 30),
                ),
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  //   return MyMainPageScreen();
                  // }));
                  Navigator.of(context).pushNamed(Answer.routeName);
                })));
  }
}
