import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:getx_crud_starter_example/app/data/models/user.dart';
@immutable
abstract class UserState extends Equatable{}

class UserLoadingState extends UserState{
  @override
  List<Object?> get props => [];

}
class UserLoadedSuccessState extends UserState{
  final User users;
  UserLoadedSuccessState(this.users);

  @override
  List<Object?> get props => [users];

}
class UserLoadingFailState extends UserState{
  final String error;
  UserLoadingFailState(this.error);

  @override
  List<Object?> get props => [error];

}