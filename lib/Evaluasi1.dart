import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evaluasi 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Evaluasi 1')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue), // warna border
                    borderRadius: BorderRadius.circular(
                      8,
                    ), // sudut border melengkung
                  ),
                  child: const Text('1'),
                ),

                Container(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue), // warna border
                    borderRadius: BorderRadius.circular(
                      8,
                    ), // sudut border melengkung
                  ),
                  child: const Text('2'),
                ),
              ],
            ),
            Container(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue), // warna border
                    borderRadius: BorderRadius.circular(
                      8,
                    ), // sudut border melengkung
                  ),
                  child: const Text('1106315'),
                ),

                Container(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue), // warna border
                    borderRadius: BorderRadius.circular(
                      8,
                    ), // sudut border melengkung
                  ),
                  child: const Text('1106316'),
                ),
              ],
            ),
            Container(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue), // warna border
                    borderRadius: BorderRadius.circular(
                      8,
                    ), // sudut border melengkung
                  ),
                  child: const Text('Depandi Enda'),
                ),
                Container(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue), // warna border
                    borderRadius: BorderRadius.circular(
                      8,
                    ), // sudut border melengkung
                  ),
                  child: const Text('Budi Handoyo'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
