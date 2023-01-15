import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getx_crud_starter_example/blocs/app_bloc_state.dart';

class AppBlocText extends Bloc<AppBlocText,AppState> {
  final List textList = ['Initial text', 'Changed text', 'Changed Again'];

  AppBlocText() : super(const AppState.empty()) {
    on((event, emit) {
      try {
        int newIndex = state.index + 1;
        if (newIndex >= textList.length) {
          newIndex = 0;
        }
        emit(AppState(index: newIndex, text: textList[newIndex]));
      } on Exception catch (e) {
        print(e);
      }
    });
  }
}
