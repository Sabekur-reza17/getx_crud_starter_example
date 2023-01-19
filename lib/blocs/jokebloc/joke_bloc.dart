import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getx_crud_starter_example/app/network/repository/joke_repository.dart';
import 'package:getx_crud_starter_example/blocs/jokebloc/joke_event.dart';
import 'package:getx_crud_starter_example/blocs/jokebloc/joke_state.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState> {
  final JokeRepository _jokeRepository;

  JokeBloc(this._jokeRepository) : super(JokeLoadingState()) {
    on<LoadJokeEvent>((event, emit) async {
      emit(JokeLoadingState());
      try {
        final joke = await _jokeRepository.getJoke();
        emit(JokeLoadedSate(joke));
      } catch (e) {
        emit(JokeErrorState(e.toString()));
      }
    });
  }
}
