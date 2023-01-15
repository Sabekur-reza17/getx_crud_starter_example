import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class AppState extends Equatable {
  final int index;
  final String text;

  const AppState.empty()
      : index = 0,
        text = 'Initial Text';

  AppState({required this.index, required this.text});

  @override
  List<Object?> get props => [index, text];
}
