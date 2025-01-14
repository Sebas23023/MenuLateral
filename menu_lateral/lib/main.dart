import 'package:flutter/material.dart';
import 'package:menu_lateral/vista/inicio_vista.dart';
import 'package:menu_lateral/vista/operaciones_vista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
        useMaterial3: true,
      ),
      home: InicioVista(),
    );
  }
}