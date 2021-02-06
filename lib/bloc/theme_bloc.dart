import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeChangeState> {
  ThemeBloc() : super(LightThemeState());

  @override
  ThemeChangeState fromJson(Map<String, dynamic> json) {
    bool isLightMode = json["isLightMode"] as bool;
    if (isLightMode) {
      return LightThemeState();
    } else {
      return DarkThemeState();
    }
  }

  @override
  Map<String, dynamic> toJson(ThemeChangeState state) {
    return {"isLightMode": state.themeState.isLightMode};
  }

  @override
  Stream<ThemeChangeState> mapEventToState(ThemeEvent event) async* {
    if (event is OnThemeChangedEvent) {
      yield* _onChangedTheme(event.lightMode);
    }
  }

  Stream<ThemeChangeState> _onChangedTheme(bool lightMode) async* {
    if (lightMode) {
      yield LightThemeState();
    } else {
      yield DarkThemeState();
    }
  }
}
