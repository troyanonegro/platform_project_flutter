import 'package:bloc/bloc.dart';
//import 'package:platform_project/Blocs/authen/authentication_bloc.dart';


import 'package:platform_project/models/user.dart';

import 'login_event.dart';
import 'login_state.dart';
/*
class LoginBloc extends Bloc<LoginEvent, LoginState> {
 // final AuthenticationBloc authBloc;
  LoginBloc({required this.authBloc}) : super(InitState());
  @override
  Stream <LoginState> mapEventToState(LoginEvent event) async*{

        if(event is LoginBloc){
          yield LoadedState(user:  User(email: 'zamora', password: '12'));

        }


  }
}
*/