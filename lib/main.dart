// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class TeksUtama extends StatelessWidget {
  const TeksUtama({super.key, required this.teks1, required this.teks2, this.backgroundColor});

  final String teks1;
  final String teks2;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          Text(
            teks1,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            teks2,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 167, 162, 162),
            ),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TeksUtama(
                      teks1: 'PANDI ROESAL',
                      teks2: 'STI202102232',
                    ),
                    TeksUtama(
                      teks1: 'RISKI NURSATRIA',
                      teks2: 'STI202102233',
                    ),
                    TeksUtama(
                      teks1: 'SUNDARI',
                      teks2: 'STI202102238',
                    ),
                    TeksUtama(
                      teks1: 'AL NIZAR VALGIN SAPUTRA',
                      teks2: 'STI202102241',
                    ),
                    TeksUtama(
                      teks1: 'STEFANUS FANDI WIBOWO',
                      teks2: 'STI202102245',
                    ),
                    TeksUtama(
                      teks1: 'DEA AVILA',
                      teks2: 'STI202102252',
                      backgroundColor: Colors.yellow,
                    ),
                    TeksUtama(
                      teks1: 'DEFI ANDRIANI',
                      teks2: 'STI202102253',
                    ),
                    TeksUtama(
                      teks1: 'VIKA WULANDARI',
                      teks2: 'STI202102280',
                    ),
                    TeksUtama(
                      teks1: 'FIRSTA ZULFATUN YANUASIH',
                      teks2: 'STI202102281',
                    ),
                    TeksUtama(
                      teks1: 'ATHIROH QOTHRUN NADA',
                      teks2: 'STI202102295',
                    ),
                    TeksUtama(
                      teks1: 'FIRAANDIANI',
                      teks2: 'STI202102302',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
