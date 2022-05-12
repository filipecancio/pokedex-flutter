import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Pokemon;


    return Scaffold(
      appBar: AppBar(
        title: Text('${args.name} Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(args.message),
        ),
      ),
    );
  }
}