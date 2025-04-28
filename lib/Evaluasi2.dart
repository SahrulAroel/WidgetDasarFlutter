import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Column Widget App',
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
      appBar: AppBar(title: const Text('Demo Column Widget')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Senin'),
                  onPressed: () {
                    _showDialog(context, 'Senin');
                  },
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  child: const Text('Selasa'),
                  onPressed: () {
                    _showDialog(context, 'Selasa');
                  },
                ),
              ],
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Rabu'),
                  onPressed: () {
                    _showDialog(context, 'Rabu');
                  },
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  child: const Text('Kamis'),
                  onPressed: () {
                    _showDialog(context, 'Kamis');
                  },
                ),
              ],
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Jumat'),
                  onPressed: () {
                    _showDialog(context, 'Jumat');
                  },
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  child: const Text('Sabtu'),
                  onPressed: () {
                    _showDialog(context, 'Sabtu');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Function to show the dialog with a custom message based on the day
  void _showDialog(BuildContext context, String day) {
    String message = '';
    switch (day) {
      case 'Senin':
        message = 'Hari yang luar biasa untuk memulai pekerjaanmu.';
        break;
      case 'Selasa':
        message = 'Tetap semangat mengerjakan tugas.';
        break;
      case 'Rabu':
        message =
            'Selalu bahagia dan bersyukur dengan apa yang telah diperoleh.';
        break;
      case 'Kamis':
        message = 'Kerja keras untuk menggapai cita-cita.';
        break;
      case 'Jumat':
        message = 'Jangan lupa untuk beribadah.';
        break;
      case 'Sabtu':
        message = 'Selamat weekend.\nManfaatkan hari minggumu untuk istrahat.';
        break;
    }

    var alertDialog = AlertDialog(
      title: Text('$day'),
      content: Text(message),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('OK'),
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
