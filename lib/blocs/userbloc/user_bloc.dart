import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getx_crud_starter_example/app/network/repository/user_repository.dart';
import 'package:getx_crud_starter_example/blocs/userbloc/user_bloc_event.dart';
import 'package:getx_crud_starter_example/blocs/userbloc/user_bloc_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository) : super(UserLoadingState()) {
    on<LoadUserEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        final users = await _userRepository.getUsers();
        print('Blog $users');
        emit(UserLoadedSuccessState(users));
      } catch (e) {
        emit(UserLoadingFailState(e.toString()));
      }
    });
  }
}
