import 'package:equatable/equatable.dart';
import 'package:platform_project/models/user.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  List<Object> get props => [];
}

class InitState extends LoginState {}

class LoadingState extends LoginState {}

class FailureState extends LoginState {
  final String error;

  const FailureState({required this.error});

  @override
  List<Object> get props => [];

  @override
  String toString() => 'Error: $error';
}


class LoadedState extends LoginState {
  final User user;

  const LoadedState({required this.user});

  @override
  String toString() => "User ${user} }";
}