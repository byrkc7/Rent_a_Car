import 'package:flutter/material.dart';
import 'package:flutter_application_6/rent.dart';

class OpelPage extends StatelessWidget {
  const OpelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OPEL", style: TextStyle(fontFamily: "Genel")),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Corsa(),
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

  Column Corsa() {
    return Column(
      children: [
        Container(
          child: Text(
            "--Opel Corsa-- ",
            style: TextStyle(fontFamily: "Genel", fontSize: 30),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Image.network(
                    "https://img.donanimhaber.com/images/haber/118099/src/yeni-opel-corsa-ne-zaman-turkiye-ye-gelecek118099_0.jpg"),
              ),
            ),
            Expanded(
              child: Container(
                child: Image.network(
                    "https://i.f5haber.com/2/1280/800/storage/files/images/2021/09/24/opel-corsa-Ob4d_cover.jpg"),
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
                title:
                    Text("Engine: 75HP", style: TextStyle(fontFamily: "Genel")),
              ),
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text("Gearbox: 5 speed automatic ",
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
                title: Text("Performance: 0-100 km/h: 13.2 seconds ",
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
                title: Text("Maximum speed: 175 km/h. ",
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
                    "Fuel Consumption: City/5.3 Litre/100 km / OUT City /3.2 Litre/100 km/ Avarage /4.3 Litre/100 km ",
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
                title: Text("Luggage Volume: 335 liters",
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
                title: Text("Curb Weight: 1251 kg ",
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
                title: Text(" Sale Price : \$ 35.000",
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
                title: Text(" Rental Price (Daily) : \$ 210",
                    style: TextStyle(fontFamily: "Genel")),
              ),
            ),
           
          ],
        )
      ],
    );
  }
}
