import 'package:atomic_mov_flutter/bloc/bloc.dart';
import 'package:atomic_mov_flutter/pages/pages.dart';
import 'package:atomic_mov_flutter/widget/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ThemeBloc>(create: (_) => ThemeBloc()),
          BlocProvider(
            create: (_) => MovieBloc()..add(FetchMovies()),
          )
        ],
        child:
            BlocBuilder<ThemeBloc, ThemeChangeState>(builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: state.themeState.themeMode,
            darkTheme: darkTheme,
            theme: lightTheme,
            home: SplashPage(),
          );
        }));
  }
}
