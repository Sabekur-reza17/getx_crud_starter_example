import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getx_crud_starter_example/blocs/internetbloc/internet_bloc.dart';
import 'package:getx_crud_starter_example/blocs/internetbloc/internet_state.dart';

class InternetCheckerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetBloc(),
      child: MaterialApp(
        showSemanticsDebugger: false,
        home: Scaffold(
          body: SafeArea(
            child: Center(child: BlocBuilder<InternetBloc, InternetSate>(
              builder: (context, state) {
                if (state is InternetGainState) {
                  return const Text('Connected');
                } else if (state is InternetLostState) {
                  return const Text('Not connected');
                } else {
                  return const Text('Loading...');
                }
              },
            )),
          ),
        ),
      ),
    );
  }
}
