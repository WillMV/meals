import 'package:flutter/material.dart';
import 'package:meals/screens/category_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            primary: Colors.amber,
            background: Colors.amber.shade50,
            secondary: Colors.purple,
          ),
          textTheme: theme.textTheme.copyWith(
              titleLarge:
                  const TextStyle(fontFamily: 'Roboto', color: Colors.black))),
      home: const CategoryScreen(),
    );
  }
}
