import 'package:flutter/material.dart';
import 'package:palma/info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Actividad 2',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        title: toString(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Actividad 2',
            style: TextStyle(color: Colors.black, fontSize: 17)),
        backgroundColor: const Color(0xff4a5eb5),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              child: Image.network(
                "https://laverdadnoticias.com/__export/1631295074823/sites/laverdad/img/2021/09/10/rm_elige_a_bts_antes_que_ser_solista.jpg_465626695.jpg",
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text(' Tabbar '),
              subtitle: const Text("Imágenes"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Pantalla1()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(' Home'),
              subtitle: const Text("Inicio"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const MyApp()));
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 8),
              color: Color(0xffffffff),
            ),
            child: const Text("Mineha Palma",
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 5.0, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Image.asset(
              "assets/paisaje.jpg",
              height: 300,
              width: 200,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 8, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            height: 90,
            width: double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 8),
              color: Color(0xffffffff),
            ),
            child: const Text("6°J Programación",
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
