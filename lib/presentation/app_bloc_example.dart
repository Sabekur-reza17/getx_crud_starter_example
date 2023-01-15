import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getx_crud_starter_example/text_change_controller.dart';

import '../blocs/app_bloc_state.dart';
import 'package:getx_crud_starter_example/blocs/app_bloc_test.dart';

class AppBlocExample extends StatelessWidget {
  const AppBlocExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => AppBlocText(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Text Change'),
          ),
          body: BlocConsumer<AppBlocText,AppState>(
            listener: (context, state) {},
            builder: (context, state) {
              return TextChangeController(
                text: state.text,
              );
            },
          )
        ),
      ),
    );
  }
}
