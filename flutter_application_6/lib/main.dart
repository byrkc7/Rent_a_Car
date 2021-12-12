import 'package:flutter/material.dart';
import 'package:flutter_application_6/clio.dart';
import 'package:flutter_application_6/fluence.dart';
import 'package:flutter_application_6/i20.dart';
import 'package:flutter_application_6/opel.dart';
import 'package:flutter_application_6/toyota.dart';

import 'audi.dart';
import 'bmw.dart';
import 'egea.dart';
import 'mercedes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          '              Bayrakcı Rent A Car',
          style: TextStyle(fontFamily: "Genel"),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              tekListeElemanlari(context),
            ],
          ),
        ),
      ),
    );
  }

  Column tekListeElemanlari(BuildContext context) {
    return Column(children: [
      Image.network(
          "https://www.ozserneo.com/wp-content/uploads/2019/04/rent-a-car-kasko-%C3%B6zserneo.jpg"),
      Card(
        color: Colors.white,
        shadowColor: Colors.red,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => BmwPage()));
          },
          leading: Icon(Icons.car_rental),
          title: Text(
            "BMW",
            style: TextStyle(fontFamily: "Genel"),
          ),
          subtitle: Text("M5 series"),
          trailing: Icon(Icons.read_more),
        ),
      ),
      Card(
        color: Colors.white,
        shadowColor: Colors.red,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MercedesPage()));
          },
          leading: Icon(Icons.car_rental),
          title: Text(
            "Mercedes",
            style: TextStyle(fontFamily: "Genel"),
          ),
          subtitle: Text("C series"),
          trailing: Icon(Icons.read_more),
        ),
      ),
      Card(
        color: Colors.white,
        shadowColor: Colors.red,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AudiPage()));
          },
          leading: Icon(Icons.car_rental),
          title: Text(
            "Audi",
            style: TextStyle(fontFamily: "Genel"),
          ),
          subtitle: Text("RS series"),
          trailing: Icon(Icons.read_more),
        ),
      ),
      Card(
        color: Colors.white,
        shadowColor: Colors.red,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => FluencePage()));
          },
          leading: Icon(Icons.car_rental),
          title: Text(
            "Renault Fluence",
            style: TextStyle(fontFamily: "Genel"),
          ),
          subtitle: Text("1.5 DCi"),
          trailing: Icon(Icons.read_more),
        ),
      ),
      Card(
        color: Colors.white,
        shadowColor: Colors.red,
        elevation: 22,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ClioPage()));
          },
          leading: Icon(Icons.car_rental),
          title: Text(
            "Renault Clio",
            style: TextStyle(fontFamily: "Genel"),
          ),
          subtitle: Text("1.5 DCi"),
          trailing: Icon(Icons.read_more),
        ),
      ),
      Card(
        color: Colors.white,
        shadowColor: Colors.red,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => EgeaPage()));
          },
          leading: Icon(Icons.car_rental),
          title: Text(
            "Fiat Egea",
            style: TextStyle(fontFamily: "Genel"),
          ),
          subtitle: Text("1.3 Multijet"),
          trailing: Icon(Icons.read_more),
        ),
      ),
      Card(
        color: Colors.white,
        shadowColor: Colors.red,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => OpelPage()));
          },
          leading: Icon(Icons.car_rental),
          title: Text(
            "Opel Corsa",
            style: TextStyle(fontFamily: "Genel"),
          ),
          subtitle: Text("1.2T 2021"),
          trailing: Icon(Icons.read_more),
        ),
      ),
      Card(
        color: Colors.white,
        shadowColor: Colors.red,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HyundaiPage()));
          },
          leading: Icon(Icons.car_rental),
          title: Text(
            "Hyundai i20",
            style: TextStyle(fontFamily: "Genel"),
          ),
          subtitle: Text("1.4 2021"),
          trailing: Icon(Icons.read_more),
        ),
      ),
      Card(
        color: Colors.white,
        shadowColor: Colors.red,
        elevation: 15,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ToyotaPage()));
          },
          leading: Icon(Icons.car_rental),
          title: Text(
            "Toyota Corolla",
            style: TextStyle(fontFamily: "Genel"),
          ),
          subtitle: Text("1.5 Diesel"),
          trailing: Icon(Icons.read_more),
        ),
      ),
    ]);
  }
}
