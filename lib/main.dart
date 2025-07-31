import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: const Text('Chapter 4'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ภาพ 1
            Image.asset(
              'assets/images/IMG.jpg',
              height: 250.0,
              fit: BoxFit.fitHeight,
              errorBuilder: (context, error, stackTrace) {
                return const Text(
                  'เกิดข้อผิดพลาดในการโหลด IMG.jpg',
                  style: TextStyle(color: Colors.red),
                );
              },
            ),
            const SizedBox(height: 30),
            // ภาพ 2
            Image.asset(
              'assets/images/IMG2.jpg',
              height: 250.0,
              fit: BoxFit.fitHeight,
              errorBuilder: (context, error, stackTrace) {
                return const Text(
                  'เกิดข้อผิดพลาดในการโหลด IMG2.jpg',
                  style: TextStyle(color: Colors.red),
                );
              },
            ),
            const SizedBox(height: 30),
            // กล่องข้อความ
            Container(
              width: 600.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 193, 7),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  'สวัสดี Flutter!',
                  style: GoogleFonts.lato(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // ปุ่มต่างๆ
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    print('กดปุ่ม Elevated');
                  },
                  child: const Text('Elevated'),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    print('กดปุ่ม Outlined');
                  },
                  child: const Icon(Icons.people_alt),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    print('กดปุ่ม Text');
                  },
                  child: const Text('Text'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            IconButton(
              onPressed: () {
                print('กดไอคอน Info');
              },
              icon: const Icon(Icons.info_outline),
              iconSize: 50,
              tooltip: 'ข้อมูล',
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}
