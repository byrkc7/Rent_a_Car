import 'package:flutter/material.dart';
import 'package:flutter_application_6/rent.dart';

class MercedesPage extends StatelessWidget {
  const MercedesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MERCEDES", style: TextStyle(fontFamily: "Genel")),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              C63(),
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

  Column C63() {
    return Column(
      children: [
        Container(
          child: Text(
            "--MERCEDES C-- ",
            style: TextStyle(fontFamily: "Genel", fontSize: 30),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Image.network(
                    "https://i.tmgrup.com.tr/gq/img/photo_gallery_photos/15-08/29/2014-mercedes-c63-amg-edition-507-02_0_0.jpg"),
              ),
            ),
            Expanded(
              child: Container(
                child: Image.network(
                    "https://www.log.com.tr/wp-content/uploads/2018/03/2019mercedesamgc63coupe12-660x371.jpg"),
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
                title: Text("Engine: 500 HP 700 Nm",
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
                title: Text("Performance: 0-100 km/h: 4.4 seconds ",
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
                title: Text("Maximum speed: 250 km/h. ",
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
                    "Fuel Consumption: City/14.3 Litre/100 km / OUT City /7.2 Litre/100 km/ Avarage /12 Litre/100 km ",
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
                    "Size: Length / Height / Width:	4800 mm / 1936 mm / 1461 mm ",
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
                title: Text("Fuel Tank: 66 liters ",
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
                title: Text("Luggage Volume: 435 liters",
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
                title: Text("Curb Weight: 1735 kg ",
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
                title: Text(" Sale Price : \$ 85.000",
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
                title: Text(" Rental Price (Daily) : \$ 430",
                    style: TextStyle(fontFamily: "Genel")),
              ),
            ),
            
          ],
        )
      ],
    );
  }
}
