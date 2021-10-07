import 'package:flutter/material.dart';
import 'package:pit_stop/Secondpage.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({Key? key}) : super(key: key);

  @override
  _RegisterpageState createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "PitStop",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Secondpage()));
            },
          )),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 400),
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextField(
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "  Email"),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextField(
                  obscureText: true,
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "  Password"),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0)),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
