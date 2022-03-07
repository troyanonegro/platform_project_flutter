import 'package:equatable/equatable.dart';
import 'package:platform_project/models/register.dart';

import 'package:equatable/equatable.dart';
import 'package:platform_project/models/user.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  List<Object> get props => [];
}

class InitState extends RegisterState {}

class LoadingState extends RegisterState {}

class FailureState extends RegisterState {
  final String error;

  const FailureState({required this.error});

  @override
  List<Object> get props => [];

  @override
  String toString() => 'Error: $error';
}