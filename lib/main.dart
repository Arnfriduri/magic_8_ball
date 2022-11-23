import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'color_schemes.g.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const BallPage(),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text("Ask Me Anything"),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  void changeBallFace(){
    setState(() {
      ballNumber = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: TextButton(
          onPressed: (){
            changeBallFace();
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    ]),
    );
  }
}
