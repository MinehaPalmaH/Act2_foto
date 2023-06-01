import 'package:flutter/material.dart';
import 'package:palma/main.dart';

void main() => runApp(const Pantalla1());

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  static const String _title = 'Nosotros';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Actividad 2'),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.person),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ],
          ),
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
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Image.network(
                  'https://img7.yna.co.kr/photo/cms/2022/06/16/84/PCM20220616000184370_P2.jpg'),
            ),
            Center(
              child: Image.network(
                  'https://gluc.mx/u/fotografias/m/2022/1/24/f638x638-65351_123518_5735.jpg'),
            ),
            Center(
              child: Image.network(
                  'https://i.pinimg.com/originals/85/73/98/857398605a51867079a5c20a06059e0b.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
