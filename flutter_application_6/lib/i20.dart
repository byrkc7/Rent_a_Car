import 'package:flutter/material.dart';
import 'package:flutter_application_6/rent.dart';

class HyundaiPage extends StatelessWidget {
  const HyundaiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HYUNDAİ", style: TextStyle(fontFamily: "Genel")),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              I20(),
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

  Column I20() {
    return Column(
      children: [
        Container(
          child: Text(
            "--HYUNDAİ İ20-- ",
            style: TextStyle(fontFamily: "Genel", fontSize: 30),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Image.network(
                    "https://www.otosevdasi.com/wp-content/uploads/2020/09/iste-turkiye-de-uretilecek-yeni-hyundai-i20-4414228.jpg"),
              ),
            ),
            Expanded(
              child: Container(
                child: Image.network(
                    "https://arbstorage.mncdn.com/modelphotos/8cfbf690-2294-469d-9676-2aa44baccc19_912x513.jpg"),
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
                title: Text("Engine: 75 HP",
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
                    "Fuel Consumption: City/4.3 Litre/100 km / OUT City /3.2 Litre/100 km/ Avarage /3.9 Litre/100 km ",
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
                title: Text("Luggage Volume: 270 liters",
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
                title: Text("Curb Weight: 1175 kg ",
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
