import 'package:buataja/Screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:buataja/Screens/login/login.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              ],
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
                    labelText: "Konfirmasi Password",
                    labelStyle: TextStyle(color: Colors.black87, fontSize: 15)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87)),
                    prefixIcon:
                        Icon(Icons.mail, size: 20, color: Colors.black87),
                    // hintText: "Masukkan Password",
                    hintStyle: TextStyle(color: Colors.black87),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.black87, fontSize: 15)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87)),
                    prefixIcon:
                        Icon(Icons.people, size: 20, color: Colors.black87),
                    // hintText: "Masukkan Password",
                    hintStyle: TextStyle(color: Colors.black87),
                    labelText: "Nama Lengkap",
                    labelStyle: TextStyle(color: Colors.black87, fontSize: 15)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: RaisedButton(
                onPressed: () {
                  Get.to(LoginScreen(), transition: Transition.cupertino);
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
                    "SIGN UP",
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
                  Get.to(LoginScreen(), transition: Transition.cupertino),
                },
                child: Text(
                  "Already Have an Account? Sign in",
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
