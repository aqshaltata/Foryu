import 'package:buataja/Screens/home/home2.dart';
import 'package:flutter/material.dart';
import 'package:buataja/Screens/register/register.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 150.0),
              margin: EdgeInsets.only(bottom: 20),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'FORYU',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87)),
                    prefixIcon:
                        Icon(Icons.person, size: 20, color: Colors.black87),
                    // hintText: "Masukkan Username",
                    hintStyle: TextStyle(color: Colors.black87),
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.black87, fontSize: 15)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87)),
                    prefixIcon:
                        Icon(Icons.lock, size: 20, color: Colors.black87),
                    // hintText: "Masukkan Password",
                    hintStyle: TextStyle(color: Colors.black87),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black87, fontSize: 15)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 0),
              child: Text(
                "Forgot your password?",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: RaisedButton(
                onPressed: () {
                  Get.off(Home2(), transition: Transition.cupertino);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.orange,
                  ),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "LOGIN",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: GestureDetector(
                onTap: () => {
                  Get.to(RegisterScreen(), transition: Transition.cupertino),
                },
                child: Text(
                  "Don't Have an Account? Sign up",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
