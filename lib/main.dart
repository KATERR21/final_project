import 'package:flutter/material.dart';
import 'strings.dart';
import 'package:final_project/screens/task.dart';
import 'package:final_project/screens/user.dart';
import 'package:final_project/screens/reg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  ThemeData _buildAppTheme() {
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
        brightness: Brightness.dark,
        textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
            bodyText1: TextStyle(fontSize: 18)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const RegScreen(),
        '/users': (context) => const UserScreen(),
        '/tasks': (context) => const TaskMainScreen(),
      },
      title: Strings.appTitle,
      theme: _buildAppTheme(),
    );
  }
}