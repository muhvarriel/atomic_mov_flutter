part of 'atom.dart';

class ToggleSwitch extends StatefulWidget {
  final String name;

  ToggleSwitch({Key key, this.name}) : super(key: key);

  @override
  _ToggleSwitchState createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeChangeState>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: SwitchListTile(
              title: Text(widget.name),
              value: state.themeState.isLightMode,
              onChanged: (value) {
                BlocProvider.of<ThemeBloc>(context)
                    .add(OnThemeChangedEvent(value));
              }),
        );
      },
    );
  }
}
