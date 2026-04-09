import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sofascore"),
          backgroundColor: const Color.fromARGB(255, 23, 7, 255),
        ),

        body: Center(child: Text('Aqui é o Body do Scaffold!')),
        backgroundColor: const Color.fromARGB(255, 39, 39, 39),

        drawer: Drawer(
          child: ListView(children: [Text('Futebol'), Text('Favoritos')]),
        ),
      ),
    );
  }
}
