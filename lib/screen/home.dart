import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/screen/detail.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, DetailScreen.routeName,
                    arguments: Pokemon("pikachu", "Oi, eu sou o pikachu"));
              },
              child: const Text('Launch screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, DetailScreen.routeName,
                    arguments: Pokemon("bubassaur", "Oi, eu sou o bubassaur"));
              },
              child: const Text('Launch screen'),
            ),
          ],
        ),
      ),
    );
  }
}
