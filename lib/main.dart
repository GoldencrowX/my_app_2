import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Awesome App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
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
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Image.asset('assets/images/IMG.jpg')),
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
