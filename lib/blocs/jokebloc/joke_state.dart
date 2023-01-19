import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:getx_crud_starter_example/app/data/models/joke_model.dart';

@immutable
abstract class JokeState extends Equatable {
}

class JokeLoadingState extends JokeState {
  @override
  List<Object?> get props => [];

}

class JokeLoadedSate extends JokeState {
  final JokeModel jokeModel;

  JokeLoadedSate(this.jokeModel);

  @override
  List<Object?> get props => [jokeModel];

}

class JokeErrorState extends JokeState {
  final String error;

  JokeErrorState(this.error);

  @override
  List<Object?> get props => [error];
}