import 'package:equatable/equatable.dart';
abstract class RegisterEvent extends Equatable{
  const RegisterEvent();
//  List<Object> get props => [];
}

class RegisterCheckEvent extends RegisterEvent {
  final String email;
  final String password1;
  final String password2;
  final String first_name;
  final String last_name;

  const RegisterCheckEvent({required this.email, required this.password1, required this.password2,required this.first_name,required this.last_name});
  @override
  List<Object> get props => [
    email,password1,password2, first_name,last_name
  ];

}