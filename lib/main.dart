// @dart=2.9

import 'package:flutter/material.dart';
import 'package:melhor_combustivel/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Melhor Combustível',                      // Título do aplicativo.
      debugShowCheckedModeBanner: false,                // Remove o banner de debug.
      theme: ThemeData(primarySwatch: Colors.amber),  // Define a cor principal.
      home: const HomeScreen(),                         // Define a tela inicial.
    );
  }
}

