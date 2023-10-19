import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './views/main_screen_view.dart';
import './blocs/counter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
      providers: [BlocProvider(create: ((context) => CounterBloc()))],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tech Exam',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple, background: Colors.white),
          useMaterial3: true,
        ),
        home: MainScreenView());
  }
}
