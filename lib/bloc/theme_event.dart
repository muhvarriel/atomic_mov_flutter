part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {}

class OnThemeChangedEvent extends ThemeEvent {
  final bool lightMode;
  OnThemeChangedEvent(this.lightMode);
  @override
  List<Object> get props => [lightMode];
}
