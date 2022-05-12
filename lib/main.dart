import 'package:flutter/material.dart';
import 'package:pokedex/screen/detail.dart';
import 'package:pokedex/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MainScreen.routeName,
      routes: {
        MainScreen.routeName: (context) => const MainScreen(),
        DetailScreen.routeName: (context) => const DetailScreen(),
      },
      home: const MainScreen(),
    );
  }
}
