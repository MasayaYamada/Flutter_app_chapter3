import 'package:flutter/material.dart';

//void main() => runApp(MaterialApp(
//      title: 'Navigation',
//      home: FirstScreen(),
//    ));

void main() => runApp(MaterialApp(
      title: 'Navigation',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    ));

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('１番目のルート'),
        ),
        body: Center(
          child: RaisedButton(
              child: Text('次の画面を開く'),
              onPressed: () {
                //SecondScreenへの遷移する処理
                Navigator.pushNamed(context, '/second');
              }),
        ),
      );
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('2番目のルート'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              //戻る処理
              Navigator.pop(context);
            },
            child: Text('戻る'),
          ),
        ),
      );
}
