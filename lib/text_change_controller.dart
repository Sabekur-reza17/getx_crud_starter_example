import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getx_crud_starter_example/blocs/app_bloc_test.dart';
import 'package:getx_crud_starter_example/blocs/app_bloc_event.dart';
import 'package:getx_crud_starter_example/text_change.dart';

class TextChangeController extends StatelessWidget {
  final String text;

  const TextChangeController({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextChange(
          text: text,
        ),
      ],
    );
  }
}
