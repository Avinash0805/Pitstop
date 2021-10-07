import 'package:flutter/material.dart';
import 'package:pit_stop/Secondpage.dart';

class SignInpage extends StatefulWidget {
  const SignInpage({Key? key}) : super(key: key);

  @override
  _SignInpageState createState() => _SignInpageState();
}

class _SignInpageState extends State<SignInpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "PitStop",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Secondpage()));
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 400),
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextField(
                  cursorColor: Colors.black,
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
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextField(
                  obscureText: true,
                  cursorColor: Colors.black,
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
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30.0)),
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
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
