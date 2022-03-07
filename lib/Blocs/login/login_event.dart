import 'package:equatable/equatable.dart';
abstract class LoginEvent extends Equatable{
 const LoginEvent();
//  List<Object> get props => [];
}

class LoginCheckEvent extends LoginEvent {
  final String email;
  final String password;
  const LoginCheckEvent({required this.email, required this.password});
  @override
  List<Object> get props => [
    email,password
  ];

}

/*
class LoginUserEmailChangeEvent extends LoginEvent{
  final String email;
  LoginUserEmailChangeEvent({required this.email});
}
class LoginPasswordChangeEvent extends LoginEvent{
  final String password;
  LoginPasswordChangeEvent({required this.password});
}

class LoginSubmitted extends LoginEvent {}

 */
