import 'package:flutter/material.dart';
import 'package:flutter_application_6/rent.dart';

class BmwPage extends StatelessWidget {
  const BmwPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMW ", style: TextStyle(fontFamily: "Genel")),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              m5(),
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

  Column m5() {
    return Column(
      children: [
        Container(
          child: Text(
            "--BMW M5-- ",
            style: TextStyle(fontFamily: "Genel", fontSize: 30),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Image.network(
                    "https://cdn.motor1.com/images/mgl/KNW4N/s3/2022-bmw-m5-cs-rear-view.webp"),
              ),
            ),
            Expanded(
              child: Container(
                child: Image.network(
                    "https://arabahaber.com.tr/wp-content/uploads/2021/01/2022-bmw-m5-cs-ic-tasarim.jpg"),
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
                title: Text("Engine: 4.4 liter V8 625 ps 750 nm torque ",
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
                title: Text("Gearbox: 8 speed automatic ",
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
                title: Text("Performance: 0-100 km/h: 3.3 seconds ",
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
                title: Text("Maximum speed: 305 km/h. ",
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
                    "Fuel Consumption: Urban / Extra-urban / Average / Co2: 15.6 / 7.7 / 10.6 / 242 g/km. ",
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
                    "Size: Length / Height / Width: 4983 mm / 1469 mm / 1903 mm ",
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
                title: Text("Fuel Tank: 68 liters ",
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
                title: Text("Luggage Volume: 530 liters",
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
                title: Text("Curb Weight: 1970 kg ",
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
                title: Text(" Sale Price : \$ 125.000",
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
                title: Text(" Rental Price (Daily) : \$ 750",
                    style: TextStyle(fontFamily: "Genel")),
              ),
            ),
          ],
        )
      ],
    );
  }
}
