import 'package:flutter/material.dart';
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:platform_project/theme/theme.dart';

///***************************************************************************
/// ThemeState
///***************************************************************************
class ThemeState extends Equatable {
  final ThemeData theme;

  const ThemeState({required this.theme}) : assert(theme != null);

  @override
  List<Object> get props => [theme];
}

///***************************************************************************
/// ThemeEvent
///***************************************************************************
abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

///*************** ThemeChanged Event ***************
class ThemeChanged extends ThemeEvent {
  final ThemeType type;

  const ThemeChanged({required this.type}) : assert(type != null);

  @override
  List<Object> get props => [type];
}

///***************************************************************************
/// ThemeBloc
///***************************************************************************
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(ThemeState initialState) : super(initialState);

  ThemeState get initialState => ThemeState(theme: darkTheme);

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    if (event is ThemeChanged) {
     /* if (event.type == ThemeType.Dark) {
        yield ThemeState(theme: darkTheme);
      }

      if (event.type == ThemeType.Light) {
        yield ThemeState(theme: lightTheme);
      }*/
    }
  }
}
