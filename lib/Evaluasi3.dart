import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Ku',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String namaLengkap = 'Sahrul Gunawan';
  final String tempatTanggalLahir = 'Teluk Belitung, 9 Agustus 2005';
  final String email = 'sahrulcc07@gmail.com';
  final String nomorHp = '085389043924';
  final String hobi = 'Main Game, Design dan Nonton';

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Ku')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('images/SAHRUL.png'),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Nama Lengkap: $namaLengkap',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Tempat, Tanggal Lahir: $tempatTanggalLahir',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10.0),
            Text('Email: $email', style: const TextStyle(fontSize: 16.0)),
            const SizedBox(height: 10.0),
            Text('Nomor HP: $nomorHp', style: const TextStyle(fontSize: 16.0)),
            const SizedBox(height: 10.0),
            Text('Hobi: $hobi', style: const TextStyle(fontSize: 16.0)),
          ],
        ),
      ),
    );
  }
}
