import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:date_format/date_format.dart';

class RentPage extends StatefulWidget {
  const RentPage({Key? key}) : super(key: key);

  @override
  State<RentPage> createState() => _RentPageState();
}

class _RentPageState extends State<RentPage> {
  String _user = "", _email = "", _number = "", _address = "";
  String SecilenAraba = "BMW";

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("RENT A CAR"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      autofocus: true,
                      maxLength: 20,
                      onSaved: (deger) {
                        _user = deger!;
                      },
                      decoration: InputDecoration(
                        labelText: "Name Surname",
                        border: OutlineInputBorder(),
                      ),
                      validator: (deger) {
                        if (deger!.length < 6) {
                          return "Name and surname must be at least 6 characters";
                        } else
                          return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onSaved: (deger) {
                        _email = deger!;
                      },
                      decoration: InputDecoration(
                        labelText: "E-mail ",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      validator: (deger) {
                        if (!EmailValidator.validate(deger!)) {
                          return "Enter Valid Email";
                        } else
                          return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      maxLength: 11,
                      onSaved: (deger) {
                        _number = deger!;
                      },
                      decoration: InputDecoration(
                        labelText: "Number",
                        prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder(),
                      ),
                      validator: (deger) {
                        if (deger!.length < 11) {
                          return "Number Must Have At Least 11 Characters";
                        } else
                          null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      textInputAction: TextInputAction.next,
                      maxLength: 50,
                      onSaved: (deger) {
                        _address = deger!;
                      },
                      decoration: InputDecoration(
                        labelText: "Adress",
                        prefixIcon: Icon(Icons.home),
                        border: OutlineInputBorder(),
                      ),
                      validator: (deger) {
                        if (deger!.length < 10) {
                          return "Number Must Have At Least 10 Characters";
                        } else
                          null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(10),
                      icon: Icon(
                        Icons.arrow_drop_down,
                      ),
                      items: [
                        DropdownMenuItem<String>(
                          child: Text(
                            "BMW",
                            style: TextStyle(fontFamily: "Genel"),
                          ),
                          value: "BMW",
                        ),
                        DropdownMenuItem<String>(
                          child: Text(
                            "AUDİ",
                            style: TextStyle(fontFamily: "Genel"),
                          ),
                          value: "AUDİ",
                        ),
                        DropdownMenuItem<String>(
                          child: Text(
                            "MERCEDES",
                            style: TextStyle(fontFamily: "Genel"),
                          ),
                          value: "MERCEDES",
                        ),
                        DropdownMenuItem<String>(
                          child: Text(
                            "FLUENCE",
                            style: TextStyle(fontFamily: "Genel"),
                          ),
                          value: "FLUENCE",
                        ),
                        DropdownMenuItem<String>(
                          child: Text(
                            "CLİO",
                            style: TextStyle(fontFamily: "Genel"),
                          ),
                          value: "CLİO",
                        ),
                        DropdownMenuItem<String>(
                          child: Text(
                            "EGEA",
                            style: TextStyle(fontFamily: "Genel"),
                          ),
                          value: "EGEA",
                        ),
                        DropdownMenuItem<String>(
                          child: Text(
                            "HYUNDAİ İ20",
                            style: TextStyle(fontFamily: "Genel"),
                          ),
                          value: "HYUNDAİ İ20",
                        ),
                        DropdownMenuItem<String>(
                            child: Text(
                              "OPEL CORSA",
                              style: TextStyle(fontFamily: "Genel"),
                            ),
                            value: "OPEL CORSA"),
                        DropdownMenuItem<String>(
                          child: Text(
                            "TOYOTA CORALLA",
                            style: TextStyle(fontFamily: "Genel"),
                          ),
                          value: "TOYOTA COROLLA",
                        ),
                      ],
                      onChanged: (secilen) {
                        setState(() {
                          SecilenAraba = secilen!;
                        });
                      },
                      hint: Text("Choose"),
                      value: SecilenAraba,
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        bool _validate = _formkey.currentState!.validate();
                        if (_validate) {
                          _formkey.currentState!.save();
                        }
                        String result =
                            "User: $_user\nEmail:$_email\nNumber:$_number\nAdress:$_address\n*****RENTAL PROCESS SUCCESSFUL*****";
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.black,
                            content: Text(
                              result,
                              style: TextStyle(fontFamily: "Genel"),
                            ),
                          ),
                        );
                      },
                      child: Text("RENT THE CAR"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
