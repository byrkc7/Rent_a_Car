import 'package:flutter/material.dart';
import 'package:flutter_application_6/rent.dart';

class EgeaPage extends StatelessWidget {
  const EgeaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EGEA", style: TextStyle(fontFamily: "Genel")),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              EGEA(),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => RentPage()));
                    },
                    child: Text(
                      "RENT",
                      style: TextStyle(
                          fontFamily: "Genel",
                          fontSize: 20,
                          color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column EGEA() {
    return Column(
      children: [
        Container(
          child: Text(
            "--Fiat Egea-- ",
            style: TextStyle(fontFamily: "Genel", fontSize: 30),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Image.network(
                    "https://im.haberturk.com/2021/03/07/ver1615111912/2997086_810x458.jpg"),
              ),
            ),
            Expanded(
              child: Container(
                child: Image.network(
                    "https://otomobil.fiat.com.tr/content/dam/fiat/TR/yeni-egea/cross/urban/ic-tasarim/EGEA_CROSS_URBAN-Desktop-1920x1080.jpg"),
              ),
            )
          ],
        ),
        Column(
          children: [
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text("Engine: 1.3 85 HP",
                    style: TextStyle(fontFamily: "Genel")),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text("Gearbox: 6 speed automatic ",
                    style: TextStyle(fontFamily: "Genel")),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text("Performance: 0-100 km/h: 11.2 seconds ",
                    style: TextStyle(fontFamily: "Genel")),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text("Maximum speed: 180 km/h. ",
                    style: TextStyle(fontFamily: "Genel")),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text(
                    "Fuel Consumption: City/6.1 Litre/100 km / OUT City /4.2 Litre/100 km/ Avarage /5.9 Litre/100 km ",
                    style: TextStyle(fontFamily: "Genel")),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text(
                    "Size: Length / Height / Width:	4979 mm / 1936 mm / 1461 mm ",
                    style: TextStyle(fontFamily: "Genel")),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text("Fuel Tank: 50 liters ",
                    style: TextStyle(fontFamily: "Genel")),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text("Luggage Volume: 480 liters",
                    style: TextStyle(fontFamily: "Genel")),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text("Curb Weight: 1425 kg ",
                    style: TextStyle(fontFamily: "Genel")),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text(" Sale Price : \$ 45.000",
                    style: TextStyle(fontFamily: "Genel")),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text(" Rental Price (Daily) : \$ 230",
                    style: TextStyle(fontFamily: "Genel")),
              ),
            ),
            
          ],
        )
      ],
    );
  }
}
