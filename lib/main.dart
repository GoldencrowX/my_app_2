import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Container(
          padding: EdgeInsets.all(50.0),
          width: 300.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(19.0),
              left: Radius.circular(19.0),
            ),
          ),
          child: Center(
            child: Image.asset(
              'assets/images/IMG.jpg',
              width: 150,

              fit: BoxFit.contain,
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FAB Pressed!');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
