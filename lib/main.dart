import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'objek_wisataa',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('images/capadocia.jpg'),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const Text(
                  'Cappadocia',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0, fontFamily: 'Staatliches'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0),
                        Text('Open Everyday'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.access_time),
                        SizedBox(height: 8.0),
                        Text('4 AM - 2 PM'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.monetization_on),
                        SizedBox(height: 8.0),
                        Text('15 Dollar USA'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  '''Cappadocia merupakan salah satu distrik kuno di Turki yang berada di dataran tinggi terjal di Pegunungan Taurus bagian utara. Di Cappadocia terdapat hamparan vulkanis yang terbentuk oleh erosi gunung berapi selama jutaan tahun. Bebatuan ini membentuk kerucut, lembah hingga gua. Keunikan Cappadocia juga tak lepas dari keberadaan ribuan balon udara warna warni yang memenuhi langit kota.''',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/9/91/U%C3%A7hisar%2C_Cappadocia_07.jpg',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/c/c1/Cappadocia_%287912377726%29.jpg',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/e/e4/Cappadocia_%288274726324%29.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
