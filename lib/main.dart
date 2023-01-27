import 'package:flutter/material.dart';
import 'package:getx_crud_starter_example/presentation/app.dart';
import 'package:getx_crud_starter_example/presentation/app_bloc_example.dart';
import 'package:getx_crud_starter_example/presentation/app_internet_checker.dart';
import 'package:getx_crud_starter_example/presentation/bloc_http_example.dart';
import 'package:getx_crud_starter_example/presentation/codeview/code_view_example.dart';
import 'package:getx_crud_starter_example/presentation/movieapp/movie_app.dart';
import 'package:getx_crud_starter_example/presentation/sharedprefexample/SharedPreferenceExample.dart';

import 'presentation/jokeapp/joke_app.dart';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

import 'presentation/my_code_view.dart';

void main() {
  runApp(const MyCodeView());
}

/// ! Ensure the files in [filePath] are included in pubspec.yaml
/// In this example the codeViewer will display this file's code
/// by pointing to the main.dart file
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: WidgetWithCodeView(
          child:  SomeWidget(), //! If empty, will only show the code view.
          filePath: 'lib/presentation/app.dart',
          iconBackgroundColor: Colors.white,
          iconForegroundColor: Colors.pink,
          labelBackgroundColor: Theme.of(context).canvasColor,
          labelTextStyle:
          TextStyle(color: Theme.of(context).textTheme.bodyText1?.color!),
          showLabelText: true,
        ),
      ),
    );
  }
}

class SomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Stack(
    children: [
      Center(
        child: Transform.rotate(
          angle: Random().nextDouble(),
          child: Text(
            'Example',
            textScaleFactor: 2,
          ),
        ),
      ),
      Wrap(
        children: List.generate(
          100,
              (_) => SizedBox(
            width: MediaQuery.of(context).size.width * .25,
            height: MediaQuery.of(context).size.width * .25,
            child: Placeholder(
              color: Colors.accents[Random().nextInt(
                Colors.accents.length,
              )],
            ),
          ),
        ),
      ),
    ],
  );
}