import 'package:flutter/material.dart';
import 'package:getx_crud_starter_example/presentation/jokeapp/joke_home.dart';

class JokeApp extends StatelessWidget {
  const JokeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.grey[900],
          backgroundColor: Colors.grey[900],
          scaffoldBackgroundColor: Colors.grey[900],
          buttonTheme: ButtonThemeData(
              buttonColor: Colors.grey[900],
              textTheme: ButtonTextTheme.primary)),
      home:  JokeHome(),
    );
  }
}
